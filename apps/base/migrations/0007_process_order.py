# Generated by Django 4.1.3 on 2023-03-21 13:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("base", "0006_logoentity"),
    ]

    operations = [
        migrations.AddField(
            model_name="process",
            name="order",
            field=models.PositiveIntegerField(default=0),
        ),
    ]