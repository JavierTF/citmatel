# Generated by Django 2.2.7 on 2021-06-19 16:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0072_auto_20210617_1538'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cambiarlogotipo',
            name='fecha_cambio',
            field=models.DateField(default='2021-06-19', verbose_name='Fecha de Cambio del Logotipo'),
        ),
    ]