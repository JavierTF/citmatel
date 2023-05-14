# Generated by Django 4.1.1 on 2022-10-07 23:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0117_rol_trabajador_proyecto_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='accion_preventiva',
            name='accion_ptr',
        ),
        migrations.RenameField(
            model_name='sosi',
            old_name='activo',
            new_name='eliminado',
        ),
        migrations.AddField(
            model_name='accion_realizada',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='area',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='clasificacion_dibujo_modelo_industrial',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='clasificacion_elemento_figurativo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='clasificacion_patente',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='clasificacion_productos_servicios',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='clasificacion_viena',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='cliente',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='consecutivo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='entradas_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_acuerdo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_entradas_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_indicador_objetivos',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_licencia',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_propiedad_industrial',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='estado_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='fuente_financiamiento',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='linea_tematica',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='metodosprueba',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='modalidad',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='pais',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='plan_medidas',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='rol_trabajador_consecutivo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='rol_trabajador_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='tipo_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='trabajador_consecutivo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='trabajador_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.AddField(
            model_name='via_recepcion',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='Activo*'),
        ),
        migrations.DeleteModel(
            name='accion_correctiva',
        ),
        migrations.DeleteModel(
            name='accion_preventiva',
        ),
    ]