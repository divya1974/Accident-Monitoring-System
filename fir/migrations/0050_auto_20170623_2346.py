# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2017-06-23 18:16
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0049_auto_20170623_1513'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='CONVERT',
            field=models.CharField(blank=True, choices=[('Y', 'YES'), ('N', 'NO')], max_length=15),
        ),
    ]
