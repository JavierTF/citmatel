# Generated by Django 4.1.3 on 2023-05-09 17:13

import apps.complaints.validators
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ("base", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="WayOfReception",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("name", models.CharField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name="Complaint",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "number",
                    models.CharField(
                        max_length=15, unique=True, verbose_name="Registro"
                    ),
                ),
                (
                    "created_date",
                    models.DateTimeField(
                        auto_now_add=True, verbose_name="Fecha de creada"
                    ),
                ),
                (
                    "reception_date",
                    models.DateField(
                        validators=[apps.complaints.validators.DateInFutureValidator()],
                        verbose_name="Fecha de recepción",
                    ),
                ),
                (
                    "deadline",
                    models.DateField(
                        blank=True, null=True, verbose_name="Fecha de cierre"
                    ),
                ),
                (
                    "client",
                    models.CharField(
                        max_length=255,
                        validators=[
                            django.core.validators.RegexValidator(
                                "^[a-zA-Z áÁéÉíÍóÓúÚñÑ.]*[a-zA-Z áÁéÉíÍóÓúÚñÑ.]$",
                                message="Solo puede ingresar letras",
                            )
                        ],
                        verbose_name="Cliente",
                    ),
                ),
                ("reason", models.CharField(max_length=150, verbose_name="Motivo")),
                (
                    "status",
                    models.PositiveIntegerField(
                        choices=[(1, "EN PROCESO"), (2, "CERRADA"), (3, "NO PROCEDE")],
                        default=1,
                        verbose_name="Estado",
                    ),
                ),
                (
                    "process",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="complaints",
                        to="base.process",
                        verbose_name="Proceso",
                    ),
                ),
                (
                    "way_of_reception",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="complaints",
                        to="complaints.wayofreception",
                        verbose_name="Vía de recepción",
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="ComplaintAction",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                (
                    "date",
                    models.DateField(
                        validators=[apps.complaints.validators.DateInFutureValidator()],
                        verbose_name="Fecha",
                    ),
                ),
                ("action", models.CharField(max_length=150, verbose_name="Acción")),
                (
                    "complaint",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        related_name="actions",
                        to="complaints.complaint",
                    ),
                ),
            ],
            options={
                "ordering": ("-date",),
                "unique_together": {("complaint", "action")},
            },
        ),
    ]