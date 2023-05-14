# Generated by Django 2.2.7 on 2020-11-23 15:49

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='acciones',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_cumplir', models.DateField(default=datetime.datetime.now, verbose_name='Fecha a Cumplir*')),
                ('seguimiento', models.CharField(max_length=25, verbose_name='Seguimiento*')),
            ],
        ),
        migrations.CreateModel(
            name='area',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Area', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Área')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='aspecto_Medir_IndicadorEficacia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_asp', models.CharField(max_length=25, verbose_name='Nombre*')),
                ('calificacion_asp', models.IntegerField(verbose_name='Calificación*')),
            ],
        ),
        migrations.CreateModel(
            name='CENDA',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cotitular', models.CharField(max_length=25, verbose_name='Cotitular*')),
                ('fecha_incrip', models.DateField(verbose_name='Fecha de Inscripción*')),
            ],
        ),
        migrations.CreateModel(
            name='coleccion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Coleccion', models.CharField(max_length=25, unique=True, verbose_name='Línea Temática')),
                ('anno', models.IntegerField(max_length=4, verbose_name='Año')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='curso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Curso', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Curso*')),
                ('fecha', models.DateField(verbose_name='Fecha*')),
            ],
        ),
        migrations.CreateModel(
            name='dictamen_tecnico',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('no_dictamen', models.IntegerField(verbose_name='Número de Dictamen')),
                ('fecha', models.DateField(verbose_name='Fecha')),
                ('nombre_capitulos', models.CharField(max_length=25, verbose_name='Nombre de los Capítulos')),
                ('documento', models.FileField(upload_to='media/dictamenes', verbose_name='Documento*')),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.area', verbose_name='Área*')),
            ],
        ),
        migrations.CreateModel(
            name='entidad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Entidad', models.CharField(max_length=25, unique=True, verbose_name='Nombre de Entidad')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='Entradas_proyecto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('no_entrada', models.IntegerField(verbose_name='Número de Entrada')),
                ('documentacion', models.CharField(max_length=25, verbose_name='Documentación*')),
                ('direccion_sitio', models.URLField(verbose_name='Dirección del Sitio*')),
                ('observaciones', models.CharField(max_length=255, verbose_name='Observaciones*')),
            ],
        ),
        migrations.CreateModel(
            name='estado_acuerdo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Estado', models.CharField(max_length=25, verbose_name='Estado*')),
            ],
        ),
        migrations.CreateModel(
            name='estado_dictamen',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Estado', models.CharField(max_length=25, verbose_name='Nombre_Estado*')),
            ],
        ),
        migrations.CreateModel(
            name='estado_entradas_proyecto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Estado', models.CharField(max_length=25, verbose_name='Nombre_Estado*')),
            ],
        ),
        migrations.CreateModel(
            name='estado_no_conformidad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Estado', models.CharField(help_text='recuerde el estado debe ser ¨en procesos¨ o ¨finalizada¨', max_length=25, verbose_name='Estado*')),
            ],
        ),
        migrations.CreateModel(
            name='estado_proyecto',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Estado', models.CharField(max_length=25, verbose_name='Nombre_Estado*')),
            ],
        ),
        migrations.CreateModel(
            name='formacion_personal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo', models.CharField(max_length=25, verbose_name='Título*')),
                ('capacitacion_necesita', models.TextField(max_length=255, verbose_name='Capacitación que Necesita*')),
                ('capacitacion_adquirida', models.ManyToManyField(to='SISGDDO.curso', verbose_name='Capacitación Adquirida*')),
            ],
        ),
        migrations.CreateModel(
            name='formatos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Formato', models.CharField(max_length=25, unique=True, verbose_name='Nombre*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='idioma',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Idioma', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Idioma*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='indicador_eficacia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_ind', models.CharField(max_length=25, verbose_name='Nombre del Indicador*')),
                ('calif_ind', models.IntegerField(verbose_name='Calificación*')),
            ],
        ),
        migrations.CreateModel(
            name='lenguaje_prog',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Lenguaje', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Lenguaje*')),
                ('version_Lenguaje', models.FloatField(verbose_name='Versión del Lenguaje*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='metodosprueba',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('metodo', models.CharField(max_length=25, verbose_name='Método*')),
            ],
        ),
        migrations.CreateModel(
            name='organismo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Organismo', models.CharField(max_length=25, verbose_name='Nombre del Organismo*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='proceso',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Proceso', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Proceso*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        # migrations.CreateModel(
        #     name='provincia',
        #     fields=[
        #         ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
        #         ('nombre_Provincia', models.CharField(max_length=25, unique=True, verbose_name='Nombre*')),
        #     ],
        # ),
        migrations.CreateModel(
            name='sistema_operativo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Sistema', models.CharField(max_length=25, unique=True, verbose_name='Nombre del Sistema*')),
                ('version_Sistema', models.FloatField(verbose_name='Versión del Sistema*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
            ],
        ),
        migrations.CreateModel(
            name='trabajador',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_trabajador', models.CharField(max_length=25, null=True, verbose_name='Nombre Trabajador*')),
                ('primer_apellido', models.CharField(max_length=25, null=True, verbose_name='Primer Apellido*')),
                ('segundo_apellido', models.CharField(max_length=25, null=True, verbose_name='Segundo Apellido*')),
                ('ci', models.CharField(max_length=11, null=True, unique=True, verbose_name='Carnet de Identidad*')),
                ('cargo', models.CharField(max_length=25, null=True, verbose_name='Cargo*')),
                ('activo', models.BooleanField(default=True, null=True, verbose_name='Activo')),
                ('formacion', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.formacion_personal', verbose_name='Formación*')),
            ],
        ),
        migrations.CreateModel(
            name='tratamiento',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_Tratamiento', models.CharField(max_length=55, verbose_name='Tratamiento*')),
            ],
        ),
        migrations.CreateModel(
            name='acciones_correptivas',
            fields=[
                ('acciones_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='SISGDDO.acciones')),
                ('accion_tomar', models.CharField(max_length=255, verbose_name='Acciones*')),
            ],
            bases=('SISGDDO.acciones',),
        ),
        migrations.CreateModel(
            name='acciones_prevenntivas',
            fields=[
                ('acciones_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='SISGDDO.acciones')),
                ('accion_tomar', models.CharField(max_length=255, verbose_name='Acciones*')),
            ],
            bases=('SISGDDO.acciones',),
        ),
        migrations.CreateModel(
            name='Valoracion_encuesta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha', models.DateField(verbose_name='Fecha')),
                ('documento', models.FileField(upload_to='media/valoracion_encuesta/', verbose_name='Valoración de Encuesta*')),
                ('ISG_total', models.DecimalField(decimal_places=2, default=0.0, max_digits=9, verbose_name='ISG Total')),
                ('elaborado_por', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='elaborado_por', to='SISGDDO.trabajador', verbose_name='Elaborado por')),
                ('organismo', models.ManyToManyField(to='SISGDDO.organismo', verbose_name='Organismos')),
            ],
        ),
        migrations.CreateModel(
            name='tipo_de_licencias',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_lic', models.CharField(max_length=25, unique=True, verbose_name='Nombre*')),
                ('no_licencia', models.IntegerField(max_length=10, verbose_name='Número de Licencia')),
                ('actividad', models.CharField(max_length=25, verbose_name='Actividad*')),
                ('fecha_otorg', models.DateField(verbose_name='Fecha de Otorgamiento*')),
                ('fecha_venc', models.DateField(verbose_name='Fecha de Vencimiento*')),
                ('observacion', models.TextField(max_length=55, verbose_name='Observación*')),
                ('entidad_emite', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='entidad_emite', to='SISGDDO.entidad', verbose_name='Entidad*')),
                ('proceso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proceso', verbose_name='Proceso*')),
                ('trabajador_responsable', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.trabajador', verbose_name='Responsable*')),
            ],
        ),
        migrations.CreateModel(
            name='SOSI',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero_salva', models.IntegerField(verbose_name='Número de Salva')),
                ('descripcion', models.CharField(max_length=255, null=True, verbose_name='Descripción*')),
                ('fecha_salv', models.DateField(verbose_name='Fecha de Salva*')),
                ('ubicacion_salv', models.CharField(max_length=25, verbose_name='Ubicación de Salva*')),
                ('documentacion', models.BooleanField(default=False, verbose_name='Documentación*')),
                ('materia_prima', models.BooleanField(default=False, verbose_name='Materia Prima*')),
                ('anno', models.IntegerField(max_length=4, verbose_name='Año')),
                ('autor', models.CharField(max_length=25, null=True, verbose_name='Autor')),
                ('cod_proyecto', models.CharField(max_length=10, verbose_name='Código del Proyecto')),
                ('nombre_proy_prod', models.CharField(max_length=25, verbose_name='Nombre del Proyecto')),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.area', verbose_name='Área')),
                ('coleccion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.coleccion', verbose_name='Línea Temática*')),
                ('formatos', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.formatos', verbose_name='Formatos*')),
                ('idioma', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.idioma', verbose_name='Idioma*')),
                ('persona_entrega', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='persona_entrega', to='SISGDDO.trabajador', verbose_name='Trabajador que Entrega')),
                ('persona_recibe', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='persona_recibe', to='SISGDDO.trabajador', verbose_name='Trabajador que Recibe')),
            ],
        ),
        migrations.CreateModel(
            name='proyecto',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False, unique=True, verbose_name='Número de Proyecto')),
                ('nombre_proyecto', models.CharField(max_length=25, verbose_name='Nombre del Proyecto*')),
                ('no_contrato', models.IntegerField(verbose_name='Número de Contrato*')),
                ('resolusion_proyecto', models.CharField(max_length=10, verbose_name='Resolución*')),
                ('fecha_inicio', models.DateField(default=datetime.datetime.now, verbose_name='Fecha de Inicio')),
                ('fecha_terminacion', models.DateField(verbose_name='Fecha de Terminación')),
                ('fecha_entrega', models.DateField(verbose_name='Fecha de Entrega')),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.area', verbose_name='Área*')),
                ('cenda', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.CENDA', verbose_name='CENDA*')),
                ('estado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.estado_proyecto', verbose_name='Estado*')),
                ('jefe_proyecto', models.ManyToManyField(to='SISGDDO.trabajador', verbose_name='Jefe del Proyecto*')),
                ('sosi', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.SOSI', verbose_name='SOSI*')),
            ],
        ),
        migrations.CreateModel(
            name='plan_medidas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('actividad', models.CharField(max_length=25, verbose_name='Actividad*')),
                ('titulo_doc', models.CharField(max_length=25, verbose_name='Título del Documento*')),
                ('fecha', models.DateField(verbose_name='Fecha*')),
                ('acciones', models.ManyToManyField(to='SISGDDO.acciones', verbose_name='Acciones*')),
                ('proceso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proceso', verbose_name='Proceso*')),
            ],
        ),
        migrations.CreateModel(
            name='No_Conformidad',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_conformifdad', models.CharField(max_length=25, verbose_name='Nombre_conformidad')),
                ('fecha_recibido', models.DateField(help_text='la fecha debe ser Día/Mes/Año Hora:Min:Seg ejemplo 01/01/2020 00:00:00', verbose_name='Fecha Recibido*')),
                ('fecha_cierre', models.DateField(help_text='la fecha debe ser Día/Mes/Año Hora:Min:Seg ejemplo 01/01/2020 00:00:00', verbose_name='Fecha Cierre*')),
                ('observacion', models.TextField(verbose_name='Observación*')),
                ('estado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.estado_no_conformidad', verbose_name='Estado*')),
                ('proceso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proceso', verbose_name='Proceso*')),
                ('trabajador', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.trabajador', verbose_name='Trabajador*')),
            ],
        ),
        migrations.CreateModel(
            name='Historico_Entradas_proyectos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('comentarios', models.CharField(max_length=55, verbose_name='Comentarios')),
                ('fecha', models.DateField(default=datetime.datetime.now, verbose_name='Fecha')),
                ('hora', models.TimeField(verbose_name='Hora')),
                ('entradas_proyectos', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='entradas_proyectos', to='SISGDDO.Entradas_proyecto', verbose_name='Entradas Proyectos')),
                ('entregado_por', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='entregado_por', to='SISGDDO.trabajador', verbose_name='Entregado_por')),
                ('recibida_por', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='recibida_por', to='SISGDDO.trabajador', verbose_name='Recibida por')),
            ],
        ),
        migrations.CreateModel(
            name='Historico_Dictamen_tecnico',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fecha_entreda', models.DateField(default=datetime.datetime.now, verbose_name='Fecha de Entrega')),
                ('fecha_envio_resultado', models.DateField(default=datetime.datetime.now, verbose_name='Fecha de Envío de Resultados')),
                ('dictamen_tecnico', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.dictamen_tecnico', verbose_name='Dictamen Técnico')),
            ],
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='estado_entradas_proyecto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.estado_entradas_proyecto', verbose_name='Estado de Entrada'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='formatos',
            field=models.ManyToManyField(to='SISGDDO.formatos', verbose_name='Formatos*'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='jefe_UEB_grupo',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='jefe_UEB_grupo', to='SISGDDO.trabajador', verbose_name='Jefe de UEB o Grupo'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='lenguaje_prog',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.lenguaje_prog', verbose_name='Lenguaje de Programación*'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='proyecto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proyecto', verbose_name='Proyecto'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='sistema_operativo',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.sistema_operativo', verbose_name='Sistema Operativo*'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='trabajador_calidad_interna',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='trabajador_calidad_interna', to='SISGDDO.trabajador', verbose_name='Trabajador que Revisa Calidad Interna'),
        ),
        migrations.CreateModel(
            name='eficacia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('eval_tot', models.DecimalField(decimal_places=2, default=0.0, max_digits=9, verbose_name='Evaluación Total*')),
                ('eficaz', models.BooleanField(default=False, verbose_name='Eficaz*')),
                ('ind_eficacia', models.DecimalField(decimal_places=2, default=0.0, max_digits=9, verbose_name='Indicador de Eficacia*')),
                ('conformidad', models.BooleanField(default=False, verbose_name='Conformidad*')),
                ('fecha', models.DateField(default=datetime.datetime.now, verbose_name='fecha*')),
                ('aspecto_Medir_IndicadorEficacia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.aspecto_Medir_IndicadorEficacia', verbose_name='Indicadores*')),
                ('proceso', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proceso', verbose_name='Proceso*')),
                ('trabajador', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.trabajador', verbose_name='Trabajadores*')),
            ],
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='disennador',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='disennador', to='SISGDDO.trabajador', verbose_name='Diseñador'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='entradas_proyectos',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.Entradas_proyecto', verbose_name='Entradas Proyectos'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='especialista_calidad',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='especialista_calidad', to='SISGDDO.trabajador', verbose_name='Especialista de Calidad'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='estado_dictamen',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.estado_dictamen', verbose_name='Estado del Dictamen*'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='eval_por',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='eval_por', to='SISGDDO.trabajador', verbose_name='Eval por*'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='idioma_subtitulado',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='idioma_subtitulado', to='SISGDDO.idioma', verbose_name='Idioma de Subtitulado'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='nuevo_idioma',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='nuevo_idioma', to='SISGDDO.idioma', verbose_name='Idioma de Subtitulado'),
        ),
        migrations.AddField(
            model_name='dictamen_tecnico',
            name='proyecto',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.proyecto', verbose_name='Proyecto*'),
        ),
        migrations.CreateModel(
            name='cliente_externo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_clienteext', models.CharField(max_length=25, verbose_name='Nombre*')),
                ('apellidos', models.CharField(max_length=25, verbose_name='Apellidos*')),
                ('activo', models.BooleanField(default=True, verbose_name='Activo')),
                # ('provincia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.provincia', verbose_name='Provincia*')),
            ],
        ),
        migrations.AddField(
            model_name='cenda',
            name='coleccion',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.coleccion', verbose_name='Línea Temática*'),
        ),
        migrations.CreateModel(
            name='auditoria_interna',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titulo_inf', models.CharField(max_length=25, verbose_name='Título del Informe*')),
                ('fecha_aud', models.DateField(verbose_name='Fecha de auditoría*')),
                ('periodo_comprueba', models.CharField(max_length=15, verbose_name='Período de Comprueba*')),
                ('asunto', models.CharField(max_length=25, verbose_name='Asuntos*')),
                ('objetivos', models.CharField(max_length=55, verbose_name='Objetivos*')),
                ('documentos_referencia', models.CharField(max_length=55, verbose_name='Documentos de Referencia*')),
                ('muestra', models.CharField(max_length=25, verbose_name='Muestra*')),
                ('conclusiones', models.CharField(max_length=255, verbose_name='Conclusiones*')),
                ('area', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.area', verbose_name='Área')),
                ('metodos_prueba', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.metodosprueba', verbose_name='Métodos de Prueba*')),
                ('plan_medidas', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.plan_medidas', verbose_name='Plan*')),
                ('trabajadores', models.ManyToManyField(to='SISGDDO.trabajador', verbose_name='Trabajadores*')),
            ],
        ),
        migrations.CreateModel(
            name='auditoria_externa',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('no_registro', models.IntegerField(unique=True, verbose_name='Número de Registro*')),
                ('fecha_emision', models.DateField(verbose_name='Fecha de Emisión')),
                ('titulo_inf', models.CharField(max_length=25, verbose_name='Título del Informe*')),
                ('resultados', models.CharField(max_length=255, verbose_name='Resultados*')),
                ('area', models.ManyToManyField(to='SISGDDO.area', verbose_name='Área')),
                ('entidad', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.entidad', verbose_name='Entidad*')),
                ('plan_medidas', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.plan_medidas', verbose_name='Plan*')),
            ],
        ),
        migrations.AddField(
            model_name='aspecto_medir_indicadoreficacia',
            name='indicadores',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.indicador_eficacia', verbose_name='Indicador*'),
        ),
        migrations.CreateModel(
            name='acuerdos_consejillo',
            fields=[
                ('id', models.IntegerField(primary_key=True, serialize=False, unique=True, verbose_name='Número de Acuerdo')),
                ('fecha_tomada', models.DateField(help_text='la fecha debe ser Día/Mes/Año ejemplo 01/01/2020', verbose_name='Fecha Tomada*')),
                ('fecha_cumplir', models.DateField(help_text='la fecha debe ser Día/Mes/Año ejemplo 01/01/2020', null=True, verbose_name='Fecha Cumplir*')),
                ('descripcion', models.CharField(max_length=255, verbose_name='Descripción*')),
                ('estado_acuerd', models.ForeignKey(help_text='Por favor escoja el estado', on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.estado_acuerdo', verbose_name='Estado*')),
                ('responsable', models.ManyToManyField(help_text='escoja el responsable', to='SISGDDO.trabajador', verbose_name='Responsables*')),
            ],
        ),
        migrations.AddField(
            model_name='acciones',
            name='responsable',
            field=models.ManyToManyField(to='SISGDDO.trabajador', verbose_name='Responsble*'),
        ),
        migrations.AddField(
            model_name='acciones',
            name='tratamiento',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='SISGDDO.tratamiento', verbose_name='Tratamiento*'),
        ),
    ]