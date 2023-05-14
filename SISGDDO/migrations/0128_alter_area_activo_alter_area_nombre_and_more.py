# Generated by Django 4.1.1 on 2022-10-10 21:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0127_alter_linea_tematica_nombre'),
    ]

    operations = [
        migrations.AlterField(
            model_name='area',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='area',
            name='nombre',
            field=models.CharField(max_length=65, null=True, unique=True, verbose_name='nombre'),
        ),
        migrations.AlterField(
            model_name='entidad',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='entidad',
            name='nombre',
            field=models.CharField(max_length=25, unique=True, verbose_name='nombre'),
        ),
        migrations.AlterField(
            model_name='estado_acuerdo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='estado_acuerdo',
            name='nombre',
            field=models.CharField(max_length=25, null=True, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='estado_entradas_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='estado_entradas_proyecto',
            name='nombre',
            field=models.CharField(max_length=25, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='estado_indicador_objetivos',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='estado_indicador_objetivos',
            name='nombre',
            field=models.CharField(max_length=20, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='estado_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='estado_proyecto',
            name='nombre',
            field=models.CharField(max_length=25, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='formato',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo'),
        ),
        migrations.AlterField(
            model_name='formato',
            name='nombre',
            field=models.CharField(max_length=25, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='fuente_financiamiento',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='fuente_financiamiento',
            name='nombre',
            field=models.CharField(max_length=80, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='linea_tematica',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='linea_tematica',
            name='anno',
            field=models.CharField(blank=True, max_length=4, null=True, verbose_name='año'),
        ),
        migrations.AlterField(
            model_name='linea_tematica',
            name='nombre',
            field=models.CharField(max_length=55, unique=True, verbose_name='nombre'),
        ),
        migrations.AlterField(
            model_name='rol_trabajador_consecutivo',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='rol_trabajador_consecutivo',
            name='nombre',
            field=models.CharField(max_length=50, null=True, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='rol_trabajador_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='rol_trabajador_proyecto',
            name='nombre',
            field=models.CharField(max_length=25, null=True, unique=True, verbose_name='nombre*'),
        ),
        migrations.AlterField(
            model_name='tipo_proyecto',
            name='activo',
            field=models.BooleanField(default=True, verbose_name='activo*'),
        ),
        migrations.AlterField(
            model_name='tipo_proyecto',
            name='nombre',
            field=models.CharField(max_length=30, unique=True, verbose_name='nombre*'),
        ),
    ]