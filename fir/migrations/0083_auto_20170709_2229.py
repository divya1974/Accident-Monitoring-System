# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-09 16:59
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0082_auto_20170709_2222'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='LOCATION',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.CASCADE, to='fir.location', verbose_name='Location'),
        ),
    ]
