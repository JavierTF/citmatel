# Generated by Django 2.2.7 on 2021-05-02 16:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('SISGDDO', '0049_auto_20210502_1603'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sosi',
            name='idioma',
            field=models.ManyToManyField(default=1, to='SISGDDO.idioma', verbose_name='Idioma*'),
        ),
    ]