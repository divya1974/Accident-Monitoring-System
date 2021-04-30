# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-07-26 02:01
from __future__ import unicode_literals

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('fir', '0109_auto_20170726_0717'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='victim_person',
            name='VIC_IN_VEH',
        ),
        migrations.AddField(
            model_name='offender',
            name='age_known',
            field=models.CharField(choices=[('Y', 'YES'), ('N', 'NO')], default=0, max_length=30, verbose_name='Age Known'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='offender',
            name='dri_lic_perm',
            field=models.CharField(blank=True, choices=[('LMV', 'LMV'), ('Commercial', 'Commercial')], max_length=25, verbose_name='Permanent License Type'),
        ),
        migrations.AlterField(
            model_name='victim_person',
            name='OFFEND',
            field=models.CharField(blank=True, choices=[('OFFENDING', 'Offending'), ('VICTIM VEHICLE', 'Victim Vehicle'), ('OUTSIDE VEHICLE', 'Outside Vehicle'), ('NOT KNOWN', 'Not Known')], default='', max_length=15, verbose_name='Victim in Vehicle'),
        ),
    ]
