# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-14 15:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0004_auto_20170614_2054'),
    ]

    operations = [
        migrations.AlterField(
            model_name='roads',
            name='DIST',
            field=models.CharField(blank=True, max_length=5),
        ),
        migrations.AlterField(
            model_name='roads',
            name='PLACE_OCC',
            field=models.CharField(blank=True, max_length=50),
        ),
        migrations.AlterField(
            model_name='roads',
            name='PS',
            field=models.CharField(blank=True, max_length=5),
        ),
        migrations.AlterField(
            model_name='roads',
            name='RNG',
            field=models.CharField(blank=True, max_length=5),
        ),
    ]
