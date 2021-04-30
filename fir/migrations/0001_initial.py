# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-13 11:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='details',
            fields=[
                ('ACC_ID', models.CharField(max_length=15, primary_key=True, serialize=False)),
                ('RNG', models.CharField(max_length=15)),
                ('CIRCLE', models.CharField(max_length=15)),
                ('DIST', models.CharField(max_length=15)),
                ('PS', models.CharField(max_length=3)),
                ('FIRNO', models.IntegerField()),
                ('SECTION', models.CharField(max_length=15)),
                ('TIME_OCC', models.TimeField()),
                ('TIME_TYPE', models.CharField(max_length=15)),
                ('DATE_OCC', models.DateField()),
                ('PLACE_OCC', models.CharField(max_length=140)),
                ('ROAD', models.CharField(max_length=15)),
                ('ROADNAME', models.CharField(max_length=150)),
                ('LOCATION', models.CharField(max_length=140)),
                ('CATEGORY', models.CharField(max_length=140)),
                ('VEHTYPE1', models.CharField(max_length=15)),
                ('TWW1', models.CharField(max_length=15)),
                ('RNOV1A', models.CharField(max_length=15)),
                ('RNOV1B', models.CharField(max_length=10)),
                ('VEHTYPE2', models.CharField(max_length=4)),
                ('TWW2', models.CharField(max_length=15)),
                ('RNOV2A', models.CharField(max_length=10)),
                ('RNOV2B', models.CharField(max_length=4)),
                ('SELF_TYPE', models.CharField(max_length=100)),
                ('INJURED', models.PositiveIntegerField()),
                ('INJMALE', models.PositiveIntegerField()),
                ('INJFEMALE', models.PositiveIntegerField()),
                ('INJBOY', models.PositiveIntegerField()),
                ('INJGIRL', models.PositiveIntegerField()),
                ('KILLED', models.PositiveIntegerField()),
                ('KILMALE', models.PositiveIntegerField()),
                ('KILFEMALE', models.PositiveIntegerField()),
                ('KILBOY', models.PositiveIntegerField()),
                ('KILGIRL', models.PositiveIntegerField()),
                ('PEDESTRIAN', models.PositiveIntegerField()),
                ('ACCTYPE', models.CharField(max_length=20)),
                ('ACCID_TYPE', models.CharField(max_length=100)),
                ('VICTIM', models.CharField(max_length=100)),
                ('DUPL', models.CharField(max_length=15)),
                ('PENDING', models.CharField(max_length=15)),
                ('DAY_NIGHT', models.CharField(max_length=15)),
                ('YEAR', models.PositiveIntegerField()),
                ('TIME_SLOT', models.CharField(max_length=15)),
                ('MONTH', models.CharField(max_length=15)),
                ('FN', models.CharField(max_length=15)),
                ('ACCAGE', models.CharField(max_length=15)),
                ('ACCSEX', models.CharField(max_length=15)),
                ('ACCDRUNK', models.BooleanField()),
                ('Intersection', models.CharField(max_length=150)),
                ('routeno', models.CharField(max_length=15)),
                ('case_status', models.CharField(max_length=15)),
                ('convert_case', models.CharField(max_length=15)),
                ('BRIEF_FACTS', models.CharField(max_length=500)),
                ('dri_lic_no', models.CharField(max_length=150)),
                ('dri_name', models.CharField(max_length=150)),
                ('dri_fath', models.CharField(max_length=150)),
                ('dri_sex', models.CharField(max_length=15)),
                ('dri_age', models.CharField(max_length=15)),
                ('dri_add', models.CharField(max_length=150)),
                ('dri_arrest', models.CharField(max_length=15)),
                ('dri_place', models.CharField(max_length=150)),
                ('dri_lic_date_issu', models.DateField()),
                ('dri_lic_date_upto', models.DateField()),
                ('dri_lic_status', models.CharField(max_length=15)),
                ('REMARK', models.CharField(max_length=300)),
                ('CONFIRM', models.CharField(max_length=15)),
                ('LONGITUDE', models.CharField(max_length=15)),
                ('LATITUDE', models.CharField(max_length=15)),
                ('CONVERT', models.CharField(max_length=15)),
                ('CONVERT_DATE', models.DateField()),
                ('CN_DT', models.CharField(max_length=150)),
                ('CONVERT_FN', models.CharField(max_length=150)),
                ('BUS_NO', models.CharField(max_length=15)),
                ('BLACK_SPOT', models.CharField(max_length=15)),
                ('BLACK_SPOT_NO', models.CharField(max_length=15)),
                ('FOR_BLK', models.CharField(max_length=15)),
                ('STATUS', models.CharField(max_length=15)),
                ('F_STATUS', models.CharField(max_length=15)),
                ('dri_add1', models.CharField(max_length=15)),
                ('RIDER_HELMET', models.CharField(max_length=15)),
                ('PILLION_HELMET', models.CharField(max_length=15)),
                ('STATE', models.CharField(max_length=15)),
                ('SCANNED', models.CharField(max_length=15)),
                ('HIT_AND_RUN_UPDATE1', models.CharField(max_length=15)),
            ],
        ),
    ]
