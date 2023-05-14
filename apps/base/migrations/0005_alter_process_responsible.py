# Generated by Django 4.1.3 on 2023-02-08 09:21

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0004_alter_procedure_file"),
    ]

    operations = [
        migrations.AlterField(
            model_name="process",
            name="responsible",
            field=models.ForeignKey(
                null=True,
                on_delete=django.db.models.deletion.SET_NULL,
                to="base.employee",
                verbose_name="Responsable",
            ),
        ),
    ]