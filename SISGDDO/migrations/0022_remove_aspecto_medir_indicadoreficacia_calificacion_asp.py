# Generated by Django 2.2.7 on 2020-12-19 17:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0021_remove_indicador_eficacia_calif_ind'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='aspecto_medir_indicadoreficacia',
            name='calificacion_asp',
        ),
    ]