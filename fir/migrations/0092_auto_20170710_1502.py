# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-10 09:32
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0091_auto_20170710_1439'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='details',
            name='FLYOVER_UNDERPASS',
        ),
        migrations.AddField(
            model_name='details',
            name='FLYOVER',
            field=models.CharField(blank=True, choices=[('Ascending Flyover', 'Ascending Flyover'), ('Descending Flyover', 'Descending Flyover'), ('Ascending Flyover Loop', 'Ascending Flyover Loop'), ('Descending Flyover Loop', 'Descending Flyover Loop')], max_length=30, verbose_name='Flyover'),
        ),
        migrations.AddField(
            model_name='details',
            name='UNDERPASS',
            field=models.CharField(blank=True, choices=[('Ascending Underpass', 'Ascending Underpass'), ('Descending Underpass', 'Descending Underpass')], max_length=30, verbose_name='Underpass'),
        ),
    ]