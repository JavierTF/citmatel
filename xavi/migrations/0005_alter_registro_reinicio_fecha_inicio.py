# Generated by Django 4.2.8 on 2024-06-06 16:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('xavi', '0004_alter_acuerdo_nombre_alter_acuerdo_numero_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='registro_reinicio',
            name='fecha_inicio',
            field=models.DateField(default='<built-in method now of type object at 0x00007FFF425DB650>', verbose_name='fecha de inicio del reinicio'),
        ),
    ]