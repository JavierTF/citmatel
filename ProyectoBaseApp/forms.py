from django.shortcuts import render
from django.urls import reverse_lazy
from django.utils.encoding import force_str
from django.contrib.auth.models import Group, User, Permission
from django.views.generic import UpdateView
from django.views.generic.edit import BaseUpdateView, DeleteView
from notifications.signals import notify
# from captcha.fields import ReCaptchaField
from django.contrib.auth.forms import UserCreationForm
from django import forms
from django.contrib import messages
from django.core.exceptions import ImproperlyConfigured
from django.forms import widgets
from django.http import HttpResponseRedirect
from django.contrib.admin.models import LogEntry
from ProyectoBaseApp import models
from . import utils
from django.forms import ValidationError
from ProyectoBaseApp.utils import register_logs
from SISGDDO.views_sisgddo import handle_exceptions
from django.contrib.auth.decorators import login_required, permission_required
from django.shortcuts import redirect
from SISGDDO.views_sisgddo import handle_exceptions, is_superuser
from django.contrib.admin.views.decorators import staff_member_required
from django.utils.decorators import method_decorator
from django.http import HttpResponseRedirect, JsonResponse, HttpResponse
import uuid
from django.contrib.auth.hashers import make_password
import os
from PIL import Image, ImageOps
from io import BytesIO
import base64
from django.contrib.sessions.models import Session
from django.db.models import Q
from django.contrib.contenttypes.models import ContentType

# class SignUpForm(UserCreationForm):
#     captcha = CaptchaField()
#     email = forms.EmailField(max_length=254)
#
#     class Meta:
#         model = models.UserApp
#         fields = ('username', 'first_name', 'last_name', 'email', 'password1', 'password2',)
#
#     def __init__(self, *args, **kwargs):
#         super(SignUpForm, self).__init__(*args, **kwargs)
#
#         self.fields['username'].widget.attrs['class'] = 'form-control'
#         self.fields['username'].widget.attrs['placeholder'] = 'Usuario'
#         self.fields['email'].widget.attrs['class'] = 'form-control'
#         self.fields['email'].widget.attrs['placeholder'] = 'Correo'
#         self.fields['first_name'].widget.attrs['class'] = 'form-control'
#         self.fields['first_name'].widget.attrs['placeholder'] = 'Su Nombre'
#         self.fields['last_name'].widget.attrs['class'] = 'form-control'
#         self.fields['last_name'].widget.attrs['placeholder'] = 'Sus Apellidos'
#         self.fields['password1'].widget.attrs['class'] = 'form-control'
#         self.fields['password1'].widget.attrs['placeholder'] = 'Contraseña'
#         self.fields['password1'].widget.attrs['minlength'] = '8'
#         self.fields['password2'].widget.attrs['class'] = 'form-control'
#         self.fields['password2'].widget.attrs['placeholder'] = 'Repita la Contraseña'
#         self.fields['password2'].widget.attrs['minlength'] = '8'
#         self.fields['captcha'].widget.attrs['class'] = 'form-control'
#         self.fields['captcha'].widget.attrs['placeholder'] = 'Captcha'
#
#     def clean_email(self):
#         email = self.cleaned_data.get('email')
#         list_errores = utils.validate_correo(self.cleaned_data.get('email'))
#         if len in list_errores > 0:
#             for u in list_errores:
#                 raise forms.ValidationError(u)
#         return self.cleaned_data.get('email')
        # Get the email
        #
        # Check to see if any users already exist with this email as a username.
        # try:
        #     if len(str(email).split("gmail")) > 1:
        #         if len(str(email).split("+")) > 1:
        #             part = str(email).split("@")
        #             if len(part) > 1:
        #                 email = str(part[0]).split("+")[0] + str(part[1])
        #     match = models.UserApp.objects.get(email=email)
        # except models.UserApp.DoesNotExist:
        #     Unable to find a user, this is fine
            # return email
        # A user was found with this as a username, raise an error.
        # raise forms.ValidationError('Este email ya esta en uso.')

    # def clean_username(self):
    #     Get the email
        # usernam = self.cleaned_data.get('username')
        #
        # Check to see if any users already exist with this email as a username.
        # try:
        #     match = models.UserApp.objects.get(username=usernam)
        # except models.UserApp.DoesNotExist:
            # Unable to find a user, this is fine
            # return usernam

        # A user was found with this as a username, raise an error.
        # raise forms.ValidationError('Este nombre de usuario ya esta en uso')


class GroupForm(forms.ModelForm):
    modelos = ['sosi', 'entrada_proyecto', 'premio', 'acuerdo', 'objetivo', 'proyecto', 
           'actividadplan', 'afectaciones', 'auditoria_interna', 'auditoria_externa', 
           'incidencia', 'process', 'procedure', 'effectiveness', 'license', 'complaint', 
           'industrialproperty', 'user']
    contents = ContentType.objects.all()
    # contents = ContentType.objects.filter(model__in=modelos)
    print('\n\n\n----> content', contents, '\n\n\n')
    content_ids = [content.id for content in contents]
    
    permisos = Permission.objects.filter(content_type__in=content_ids)
    
    permissions = forms.ModelMultipleChoiceField(queryset = permisos, required = True, label = 'Permisos*', widget = widgets.SelectMultiple(attrs = {'class': ' form-control texto select2','autocomplete': 'on', 'placeholder': 'Rol', 'style': 'height: 400px'}))

    @method_decorator(login_required)
    @method_decorator(staff_member_required)
    @method_decorator(permission_required('auth.add_group'))
    @method_decorator(handle_exceptions)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)
    
    class Meta:
        model = Group
        fields = "__all__"
        widgets = {
            "name": widgets.TextInput(attrs={'class': ' form-control', 'placeholder': 'Introduzca el nombre'}),
        }

class GroupUpdate(UpdateView):
    form_class = GroupForm
    model = Group
    success_url = reverse_lazy('group_list')

    def post(self, request, *args, **kwargs):
        register_logs(request, Group, self.get_object().pk, self.get_object().__str__(), 2)
        self.object = self.get_object()
        messages.success(request, "Rol modificado con éxito")
        super(BaseUpdateView, self).post(request, *args, **kwargs)
        response = {
            'result': 'success',
            'title': 'Rol modificado con éxito'
        }

        return JsonResponse(response)

class GroupDelete(DeleteView):
    model = Group
    success_url = reverse_lazy('group_list')

    @method_decorator(login_required)
    @method_decorator(staff_member_required)
    @method_decorator(permission_required('auth.delete_group'))
    @method_decorator(handle_exceptions)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def form_valid(self, form):
        # Lógica personalizada de eliminación
        group = self.get_object()

        users_with_group_perms = group.user_set.filter(user_permissions__group=group).exists()
        if users_with_group_perms:
            response = {
                'result': 'error',
                'title': 'No se puede eliminar el rol. El rol tiene usuarios asociados.',
            }
            return JsonResponse(response)
        
        register_logs(self.request, Group, group.pk, group.__str__(), 3)
        group.delete()

        response = {
            'result': 'success',
            'title': 'Rol eliminado con éxito'
        }

        return JsonResponse(response)

class UserForm(UserCreationForm):
    # captcha = CaptchaField()
    def clean_email(self):
        correo_current_user = self.cleaned_data['email']
        if models.UserApp.objects.filter(email=correo_current_user)[:1].count() > 0:
            raise ValidationError("El correo ya está en uso")
        list_error= utils.validate_correo(self.cleaned_data.get('email'))
        if len(list_error) > 0:
            for i in list_error:
                raise forms.ValidationError(i)        
        return self.cleaned_data.get('email')
    
    groups = forms.ModelMultipleChoiceField(queryset = Group.objects.all(), required = True, label = 'Roles/Grupos*', widget = widgets.SelectMultiple(attrs = {'class': 'form-control texto select2','autocomplete': 'on'}))

    class Meta:
        model = models.UserApp
        fields = [
            'username',
            'email',
            'first_name',
            'last_name',
            'password1',
            'password2',
            'groups',
            'image',
        ]
        widgets = {
            "username": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca el nombre de usuario'}),
            "email": widgets.EmailInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca dirección de correo'}),
            "first_name": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca el nombre'}),
            "last_name": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca los apellidos'}),
            "password1": widgets.PasswordInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca la contraseña'}),
            "password2": widgets.PasswordInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca la contraseña nuevamente'}),         
            "image": widgets.ClearableFileInput(attrs={'class': ' form-control','accept':'image/*'}),
        }

class UserProfile(forms.ModelForm):
    
    class Meta:
        model = models.UserApp
        fields = [
            'image',
        ]
        widgets = {
            "image": widgets.ClearableFileInput(attrs={'class': ' form-control','accept':'image/*'}),
        }

# class UserAdminProfile(forms.ModelForm):

#     class Meta:
#         model = models.UserApp
#         fields = [
#             'username',
#             'first_name',
#             'email',
#             'last_name',
#             'groups',
#             'is_active',
#             'image',
#         ]
#         widgets = {

#             "username": widgets.TextInput(attrs={'class': ' form-control'}),
#             "first_name": widgets.TextInput(attrs={'class': ' form-control','required':'required'}),
#             "last_name": widgets.TextInput(attrs={'class': ' form-control','required':'required'}),
#             "email": widgets.EmailInput(attrs={'class': ' form-control'}),
#             "groups": widgets.SelectMultiple(attrs={'class': ' form-control'}),
#             "is_active": widgets.CheckboxInput(attrs={'class': ' form-control'}),
#             "image": widgets.ClearableFileInput(attrs={'class': ' form-control','accept':'image/*'}),

#         }
#     def clean_email(self):
#         list_error = utils.validate_correo(self.cleaned_data.get('email'))
#         correo_current_user = self.cleaned_data['email']
#         if len(list_error) > 0:
#             for i in list_error:
#                 raise forms.ValidationError(i)
#         if models.UserApp.objects.filter(email=correo_current_user).count() > 0:
#             raise ValidationError("El correo ya está en uso")
#         return self.cleaned_data.get('email')

#     def clean(self):
#         id_current_user = self.data.get('id')
#         nombre_current_user = models.UserApp.objects.get(id=id_current_user).first_name
#         apellidos_current_user = models.UserApp.objects.get(id=id_current_user).last_name
#         username_current_user = models.UserApp.objects.get(id=id_current_user).username

#         list_excluding = models.UserApp.objects.all().exclude(first_name=nombre_current_user,
#                                                               last_name=apellidos_current_user)
#         list_excluding_username = models.UserApp.objects.all().exclude(username=username_current_user)

#         nombre_form = self.cleaned_data['first_name']
#         apellidos_form = self.cleaned_data['last_name']
#         username_form = self.cleaned_data['username']

#         for u in list_excluding:
#             if u.first_name == nombre_form and u.last_name == apellidos_form:
#                 self.add_error('first_name', 'Ya existe un usuario con este nombre')
#                 self.add_error('last_name', 'Ya existe un usuario con estos apellidos')

#         for u in list_excluding_username:
#             if u.username == username_form:
#                 self.add_error('username', 'Nombre de usuario ya registrado')

class UserAdminProfile(UserCreationForm):    
    def __init__(self, *args, **kwargs):
        super(UserAdminProfile, self).__init__(*args, **kwargs)
        # Setting the format of the date field to the format that the datepicker uses.
        self.fields['username'].required = False
        self.fields['password1'].required = False
        self.fields['password2'].required = False
    
    def clean_email(self):
        correo_current_user = self.cleaned_data['email']
        if models.UserApp.objects.filter(email=correo_current_user).count() > 0:
            raise ValidationError("El correo ya está en uso")
        list_error= utils.validate_correo(self.cleaned_data.get('email'))
        if len(list_error) > 0:
            for i in list_error:
                raise forms.ValidationError(i)        
        return self.cleaned_data.get('email')

    groups = forms.ModelMultipleChoiceField(queryset = Group.objects.all(), required = True, label = 'Roles/Grupos*', widget = widgets.SelectMultiple(attrs = {'class': ' form-control texto select2','autocomplete': 'on'}))

    class Meta:
        model = models.UserApp
        fields = [
            'username',
            'email',
            'first_name',
            'last_name',
            'password1',
            'password2',
            'groups',
            'image',
        ]
        widgets = {
            "username": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca el nombre de usuario'}),
            "email": widgets.EmailInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca dirección de correo'}),
            "first_name": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca el nombre'}),
            "last_name": widgets.TextInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca los apellidos'}),
            "password1": widgets.PasswordInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca la contraseña'}),
            "password2": widgets.PasswordInput(attrs={'class': ' form-control', 'autocomplete': 'on', 'placeholder': 'Introduzca la contraseña nuevamente'}),         
            "image": widgets.ClearableFileInput(attrs={'class': ' form-control','accept':'image/*'}),
        }

    def clean(self):
        id_current_user = self.data.get('id')
        nombre_current_user = models.UserApp.objects.get(id=id_current_user).first_name
        apellidos_current_user = models.UserApp.objects.get(id=id_current_user).last_name
        username_current_user = models.UserApp.objects.get(id=id_current_user).username

        list_excluding = models.UserApp.objects.all().exclude(first_name=nombre_current_user,
                                                              last_name=apellidos_current_user)
        list_excluding_username = models.UserApp.objects.all().exclude(username=username_current_user)

        nombre_form = self.cleaned_data['first_name']
        apellidos_form = self.cleaned_data['last_name']
        username_form = self.cleaned_data['username']

        for u in list_excluding:
            if u.first_name == nombre_form and u.last_name == apellidos_form:
                self.add_error('first_name', 'Ya existe un usuario con este nombre')
                self.add_error('last_name', 'Ya existe un usuario con estos apellidos')

        for u in list_excluding_username:
            if u.username == username_form:
                self.add_error('username', 'Nombre de usuario ya registrado')

class UserUpdateAdmin(UpdateView):
    model = models.UserApp
    form_class = UserProfile
    template_name = ('auth/profile.html')
    success_url = reverse_lazy('logout')
    
    def post(self, request, *args, **kwargs):
        register_logs(request, models.UserApp, self.get_object().uui, self.get_object().__str__(), 2)
        # notify.send(request.user, recipient=self.get_object(), verb='Se han modificado sus datos', level='warning')
        self.object = self.get_object()
        messages.success(request, "Usuario modificado con éxito")
        return super(BaseUpdateView, self).post(request, *args, **kwargs)

    def get_success_url(self):
        if self.success_url:
            if self.request.POST.get('x') != "":
                x = float(self.request.POST.get('x'))
                y = float(self.request.POST.get('y'))
                w = float(self.request.POST.get('width'))
                h = float(self.request.POST.get('height'))

                image = Image.open(self.get_object().image).convert('RGB')
                cropped_image = image.crop((x, y, w + x, h + y))
                resized_image = cropped_image.resize((200, 200), Image.Resampling.LANCZOS)
                
                # print('\n', 'IMAGE IMAGE IMAGE', self.get_object().image, '\n')

                # Guardar la imagen en BytesIO
                # with BytesIO() as buffer:
                #     resized_image.save(buffer, format="JPEG")
                #     image_bytes = buffer.getvalue()

                # base64_image = base64.b64encode(image_bytes).decode('utf-8')
                # self.request.COOKIES['user_photo'] = base64_image
                # try:
                #     userapp = models.UserApp.objects.get(pk = self.get_object().pk)
                #     # print('\n', 'userapp userapp userapp', userapp[0].image, '\n')
                #     
                #     userapp.image = self.get_object().image
                # except Exception as e:
                #     print(f'Hubo un error {e}')

            # url = force_str(self.success_url)
        else:
            raise ImproperlyConfigured(
                "No URL to redirect to. Provide a success_url.")
        # return url
        response = {}
        response['result'] = 'success'
        response['title'] = 'Imagen actualizada con éxito'
        response['text'] = 'Se cerrará la sesión para mejor carga de los datos'
        return JsonResponse(response)
        # return response
        # return render(self.request, url)

# class UserUpdate(UpdateView):
#     model = models.UserApp
#     form_class = UserAdminProfile
#     template_name = ('auth/user_update.html')
#     success_url = reverse_lazy('user_list')
    
#     contexto = {'form': form_class}
    
#     def get(self, request, *args, **kwargs):
#         self.object = self.get_object()
#         user = models.User.objects.get(pk=self.request.user.pk)
#         print('\n', 'user', user, '\n')
#         user_app = models.UserApp.objects.filter(user_ptr=user)
#         print('\n', 'user_app', user_app, '\n')
#         if len(user_app) == 0:
#             u = models.UserApp(
#                 password=user.password,
#                 last_login=user.last_login,
#                 is_superuser=user.is_superuser,
#                 username=user.username,
#                 first_name=user.first_name,
#                 last_name=user.last_name,
#                 email=user.email,
#                 is_staff=user.is_staff,
#                 is_active=user.is_active,
#                 date_joined=user.date_joined,
#                 user_ptr = user,
#                 referUser=uuid.uuid4(),
#             )
#             u.save()
#             print('\n', 'user_app', u, '\n')
        
#         self.contexto['object'] = self.object
        
#         return render(request, self.template_name, self.contexto)
    
#     def get_success_url(self):
#         return reverse_lazy(self.success_url)
    
#     def post(self, request, *args, **kwargs):
#         form = self.get_form(UserAdminProfile)  
#         self.object = self.get_object()
#         us = User.objects.filter(pk = self.get_object().pk)
#         userapp = models.UserApp.objects.filter(pk = self.get_object().pk)

#         us.update(
#             username = form['username'].value(),
#             email = form['email'].value(),
#             first_name = form['first_name'].value(),
#             last_name = form['last_name'].value(),   
#             password = form['password1'].value(),   
#         )

#         userapp.update(  
#             image = form['image'].value() if form['image'].value() else None,   
#         )

#         us = self.get_object()
#         us.groups.clear()
#         grupos = form['groups'].value()
#         for f in grupos:
#             try:
#                 felem = Group.objects.get(pk = f)
#                 us.groups.add(felem)
#             except Exception as e:
#                 print(f'Error al actualizar grupos en usuario {e}')
#                 response = {
#                     'result': 'error',
#                     'title': 'Error al modificar'
#                 }
#                 return JsonResponse(response)
                
#         us.save()

#         notify.send(request.user, recipient=self.get_object(), verb='Se han modificado sus datos', level='warning')
#         register_logs(request, us, self.get_object().uui, self.get_object().__str__(), 2)
#         response = {
#                 'result': 'success',
#                 'title': 'Usuario modificado con éxito'
#             }
#         return JsonResponse(response)

class UserUpdate(UpdateView):
    model = models.UserApp
    form_class = UserAdminProfile
    template_name = ('auth/user_update.html')
    success_url = reverse_lazy('user_list')
    
    def post(self, request, *args, **kwargs):
        form = self.get_form(UserAdminProfile)  
        self.object = self.get_object()
        us = User.objects.filter(pk = self.get_object().pk)
        userapp = models.UserApp.objects.filter(pk = self.get_object().pk)

        us.update(
            username = form['username'].value(),
            email = form['email'].value(),
            first_name = form['first_name'].value(),
            last_name = form['last_name'].value(),   
        )
        
        if form['password1'].value():
            us.update(
                password = make_password(form['password1'].value()),
            )

        # if form['image'].value():
        #     image = form['image'].value()
        #     userapp.update(  
        #         image = "foto/" + image.name
        #     )

        us = self.get_object()
        us.groups.clear()
        grupos = form['groups'].value()
        for f in grupos:
            try:
                felem = Group.objects.get(pk = f)
                us.groups.add(felem)
            except Exception as e:
                print(f'Error al actualizar grupos en usuario {e}')
                response = {
                    'result': 'error',
                    'title': 'Error al modificar'
                }
                return JsonResponse(response)
                
        us.save()

        notify.send(request.user, recipient=self.get_object(), verb='Se han modificado sus datos', level='warning')
        register_logs(request, us, self.get_object().uui, self.get_object().__str__(), 2)
        response = {
                'result': 'success',
                'title': 'Usuario modificado con éxito'
            }
        return JsonResponse(response)
    
class UserDetail(UpdateView):
    model = models.UserApp
    form_class = UserAdminProfile
    template_name = ('auth/user_detail.html')
    success_url = reverse_lazy('user_list')
    
    def get(self, request, *args, **kwargs):
        self.object = self.get_object()
        register_logs(request, models.UserApp, self.get_object().uui, self.get_object().__str__(), 0)
        return super(BaseUpdateView, self).post(request, *args, **kwargs)

# class UserDelete(DeleteView):
#     model = User
#     success_url = reverse_lazy('user_list')
    
#     def get(self, request, *args, **kwargs):
#         self.object = self.get_object()
#         if self.object.is_superuser:
#             return redirect('error403')  # Reemplaza 'otra_vista' por la URL de la vista a la que deseas redireccionar
#         return self.render_to_response(self.get_context_data())

#     def delete(self, request, *args, **kwargs):
#         register_logs(request, models.UserApp, self.get_object().pk, self.get_object().__str__(), 3)
#         self.object = self.get_object()
#         success_url = self.get_success_url()
#         if LogEntry.objects.filter(user_id = self.get_object().pk).count() == 0:
#             self.object.delete()
#             response = {
#                 'result': 'success',
#                 'title': 'Usuario eliminado con éxito'
#             }
#             return JsonResponse(response)
#         else:
#             response = {
#                 'result': 'info',
#                 'title': 'El usuario posee datos de interés para la entidad por tanto no se puede borrar'
#             }
#             return JsonResponse(response)
class UserDelete(DeleteView):
    model = models.User
    success_url = reverse_lazy('user_list')

    def get(self, request, *args, **kwargs):
        self.object = self.get_object()
        if self.object.is_superuser:
            return redirect('error403')  
        return self.render_to_response(self.get_context_data())

    def form_valid(self, form):
        self.object.is_active = False
        self.object.save()
        register_logs(self.request, models.UserApp, self.object.pk, self.object.__str__(), 3)

        if LogEntry.objects.filter(user_id=self.object.pk).count() == 0:
            response = {
                'result': 'success',
                'title': 'Usuario eliminado con éxito'
            }
            return JsonResponse(response)
        else:
            response = {
                'result': 'info',
                'title': 'El usuario posee datos de interés para la entidad por tanto no se puede borrar'
            }
            return JsonResponse(response)
        
class UserActivate(UpdateView):
    model = models.UserApp
    form_class = UserAdminProfile
    # template_name = ('auth/user_form.html')
    success_url = reverse_lazy('user_list')

    @method_decorator(login_required)
    @method_decorator(staff_member_required)
    @method_decorator(permission_required('auth.change_user'))
    @method_decorator(handle_exceptions)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)
    
    def post(self, request, *args, **kwargs):
        formu = self.get_form(UserAdminProfile)
        register_logs(request, models.UserApp, self.get_object().uui, self.get_object().__str__(), 2)
        notify.send(request.user, recipient=self.get_object(), verb='Se han modificado sus datos', level='warning')
        self.object = self.get_object()
        if not formu.errors:
            messages.success(request, "Usuario modificado con éxito")
        return super(BaseUpdateView, self).post(request, *args, **kwargs)