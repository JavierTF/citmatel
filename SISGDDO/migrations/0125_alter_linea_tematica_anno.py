# Generated by Django 4.1.1 on 2022-10-10 01:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0124_alter_cambiarlogotipo_fecha_cambio_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='linea_tematica',
            name='anno',
            field=models.DateField(blank=True, null=True, verbose_name='Año'),
        ),
    ]