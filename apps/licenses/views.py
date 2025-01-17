from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required, permission_required
from django.core.files.storage import FileSystemStorage
from django.template.loader import render_to_string
from django.urls import reverse_lazy
from django.http import JsonResponse, HttpResponse
from django.conf import settings
from django.db.models import Q
from weasyprint import HTML, CSS
import datetime
import os

from apps.base.utils import get_logos, logs
from apps.licenses.models import License
from apps.licenses.forms import LicenseModelForm


# Licenses

def list_licenses(request):
    """
    En esta vista se listan los procesos de eficacias,
    :param request:
    :return: Vista listar para los Procesos de eficacia
    """
    models = License.objects.all()
    template_models_list = 'licenses/licenses/list.html'

    return render(
        request,
        'licenses/licenses/base.html',
        {
            'template_models_list': template_models_list,
            'models': models,
        }
    )



def details_licenses(request, license_id):
    model = get_object_or_404(License, pk=license_id)
    return render(request, 'licenses/licenses/details.html', {'model': model})



def create_licenses(request):
    form = LicenseModelForm()

    if request.method == 'POST':
        form = LicenseModelForm(request.POST, request.FILES)

        if form.is_valid():
            instance = form.save()
            logs(request, License, instance, 1)
            return JsonResponse({'results': {'url': reverse_lazy('licenses:list_licenses')}})

    return render(request, 'licenses/licenses/create.html', {'form': form})



def update_licenses(request, license_id):
    instance = get_object_or_404(License, pk=license_id)
    form = LicenseModelForm(instance=instance)

    if request.method == 'POST':
        form = LicenseModelForm(instance=instance, data=request.POST, files=request.FILES)

        if form.is_valid():
            instance = form.save()
            logs(request, License, instance, 2)
            return JsonResponse({'results': {'url': reverse_lazy('licenses:list_licenses')}})

    return render(request, 'licenses/licenses/update.html', {'instance': instance, 'form': form})



def delete_licenses(request, license_id):
    license = get_object_or_404(License, pk=license_id)
    logs(request, License, license, 3)
    license.delete()
    return redirect(reverse_lazy('licenses:list_licenses'))



def export_licenses(request):
    if request.method == 'GET':
        logos = get_logos()
        logo1 = logos['logo1']
        logo2 = logos['logo2']
        models = License.objects.all()
        filters = Q(pk__gt=0)

        if request.GET.get('export_status') and int(request.GET.get('export_status')) != 0:
            filters = filters & Q(status=request.GET.get('export_status'))

        if request.GET.get('search') and request.GET.get('search') != '':
            filters = filters & \
                    (
                        Q(process__abbreviation__icontains=request.GET.get('search'))
                        | Q(process__name__icontains=request.GET.get('search'))
                        | Q(process__responsible__first_name__icontains=request.GET.get('search'))
                        | Q(process__responsible__last_name__icontains=request.GET.get('search'))
                        | Q(associated_process__abbreviation__icontains=request.GET.get('search'))
                        | Q(entity__name__icontains=request.GET.get('search'))
                        | Q(grant_date__icontains=request.GET.get('search'))
                        | Q(expiration_date__icontains=request.GET.get('search'))
                    )

        html_string = render_to_string(
            'licenses/licenses/export_list.html',
            {'models': models.filter(filters).distinct()}
        )
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        uri_tmp = os.path.join(settings.MEDIA_ROOT, 'tmp')
        html.write_pdf(
            target=os.path.join(uri_tmp, 'Licencia.pdf'),
            zoom=0.75,
            stylesheets=[CSS(settings.STATICFILES_DIRS[0] + '/base/css/pdf/styles.css'),
                         CSS(settings.STATICFILES_DIRS[0] + '/base/css/pdf/style.bundle.pdf.css'),
                         CSS(string=".logo-header-container {width: 50% !important;background-image: url(" + request.build_absolute_uri(
                             logo1.url or '') + ");background-position: left top;background-repeat: no-repeat;background-size: 28rem;height: 12rem; opacity: 0.75;} .logo1-header-container {width: 50% !important;background-image: url(" + request.build_absolute_uri(
                             logo2.url or '') + ");background-position: right top;background-repeat: no-repeat;background-size: 8rem;height: 12rem; opacity: 0.75;}"),
                         ],
            presentational_hints=True
        )
        fs = FileSystemStorage(uri_tmp)
        with fs.open('Licencia.pdf') as pdf:
            response = HttpResponse(pdf, content_type='application/pdf')
            response['Content-Disposition'] = 'attachment; filename="Licencias Operacionales.pdf"'
            return response

    return redirect(reverse_lazy('licenses:list_licenses'))



def export_details_licenses(request, license_id):
    if request.method == 'GET':
        logos = get_logos()
        logo1 = logos['logo1']
        logo2 = logos['logo2']
        model = get_object_or_404(License, pk=license_id)
        html_string = render_to_string('licenses/licenses/export_details.html', {'model': model})
        html = HTML(string=html_string, base_url=request.build_absolute_uri())
        uri_tmp = os.path.join(settings.MEDIA_ROOT, 'tmp')
        html.write_pdf(
            target=os.path.join(uri_tmp, 'Licencia.pdf'),
            zoom=0.75,
            stylesheets=[CSS(settings.STATICFILES_DIRS[0] + '/base/css/pdf/styles.css'),
                         CSS(settings.STATICFILES_DIRS[0] + '/base/css/pdf/style.bundle.pdf.css'),
                         CSS(string=".logo-header-container {width: 50% !important;background-image: url(" + request.build_absolute_uri(
                             logo1.url or '') + ");background-position: left top;background-repeat: no-repeat;background-size: 28rem;height: 12rem; opacity: 0.75;} .logo1-header-container {width: 50% !important;background-image: url(" + request.build_absolute_uri(
                             logo2.url or '') + ");background-position: right top;background-repeat: no-repeat;background-size: 8rem;height: 12rem; opacity: 0.75;}"),
                         ],
            presentational_hints=True
        )
        fs = FileSystemStorage(uri_tmp)
        with fs.open('Licencia.pdf') as pdf:
            response = HttpResponse(pdf, content_type='application/pdf')
            response['Content-Disposition'] = 'attachment; filename="Licencia Operacional.pdf"'
            return response

    return redirect(reverse_lazy('licenses:list_licenses'))
