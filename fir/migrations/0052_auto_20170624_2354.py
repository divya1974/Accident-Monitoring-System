# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2017-06-24 18:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0051_auto_20170624_1318'),
    ]

    operations = [
        migrations.AlterField(
            model_name='details',
            name='CONVERT',
            field=models.CharField(choices=[('Y', 'YES'), ('N', 'NO')], default='N', max_length=15),
        ),
    ]