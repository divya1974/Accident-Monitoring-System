# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2017-06-22 08:57
from __future__ import unicode_literals

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0044_auto_20170620_2328'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='FIRNO',
            field=models.PositiveIntegerField(validators=[django.core.validators.MaxValueValidator(9999), django.core.validators.MinValueValidator(0)]),
        ),
        migrations.AlterField(
            model_name='details',
            name='REMARK',
            field=models.CharField(blank=True, max_length=500),
        ),
        migrations.AlterField(
            model_name='details',
            name='TIME_OCC',
            field=models.CharField(max_length=4),
        ),
    ]
