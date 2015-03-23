# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('procurements', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProcurementProducts',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('item_name', models.CharField(max_length=50)),
                ('item_type', models.CharField(max_length=50)),
                ('procurement', models.ManyToManyField(to='procurements.Procurement')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
