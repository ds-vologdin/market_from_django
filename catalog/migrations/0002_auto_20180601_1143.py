# Generated by Django 2.0.5 on 2018-06-01 11:43

import django.contrib.postgres.fields.jsonb
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('catalog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='parameters',
            field=django.contrib.postgres.fields.jsonb.JSONField(default={}),
        ),
        migrations.AlterField(
            model_name='product',
            name='cost',
            field=models.DecimalField(blank=True, decimal_places=2, max_digits=12),
        ),
    ]
