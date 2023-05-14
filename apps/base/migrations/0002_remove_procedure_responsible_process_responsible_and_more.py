# Generated by Django 4.1.3 on 2023-01-16 13:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0001_initial"),
    ]

    operations = [
        migrations.RemoveField(model_name="procedure", name="responsible",),
        migrations.AddField(
            model_name="process",
            name="responsible",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.CASCADE,
                to="base.employee",
                verbose_name="Responsable",
            ),
        ),
        migrations.AlterField(
            model_name="procedure",
            name="active",
            field=models.BooleanField(default=True, verbose_name="Activo"),
        ),
        migrations.AlterField(
            model_name="procedure",
            name="edition",
            field=models.CharField(default="00", max_length=3, verbose_name="Edición"),
        ),
        migrations.AlterField(
            model_name="procedure",
            name="name",
            field=models.CharField(max_length=150, unique=True, verbose_name="Nombre"),
        ),
        migrations.AlterField(
            model_name="procedure",
            name="revision",
            field=models.CharField(default="00", max_length=3, verbose_name="Revisión"),
        ),
        migrations.AlterField(
            model_name="process",
            name="active",
            field=models.BooleanField(default=True, verbose_name="Activo"),
        ),
        migrations.AlterField(
            model_name="process",
            name="edition",
            field=models.CharField(default="00", max_length=3, verbose_name="Edición"),
        ),
        migrations.AlterField(
            model_name="process",
            name="name",
            field=models.CharField(max_length=150, unique=True, verbose_name="Nombre"),
        ),
        migrations.AlterField(
            model_name="process",
            name="revision",
            field=models.CharField(default="00", max_length=3, verbose_name="Revisión"),
        ),
    ]