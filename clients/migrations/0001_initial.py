# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Client',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('full_name', models.CharField(max_length=50)),
                ('phone', models.CharField(max_length=30)),
                ('email', models.EmailField(max_length=254)),
                ('age', models.CharField(max_length=3)),
                ('address', models.CharField(max_length=50)),
                ('contact_method', models.CharField(max_length=30)),
                ('occupation', models.CharField(max_length=30)),
                ('tier', models.CharField(max_length=30)),
                ('birthday', models.CharField(max_length=30)),
                ('relationship_status', models.CharField(max_length=30)),
                ('sales_rep', models.CharField(max_length=30)),
                ('meeting_location', models.CharField(max_length=30)),
                ('contact_person', models.CharField(max_length=30)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Interests',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('interest', models.CharField(max_length=50)),
                ('client_interests', models.ManyToManyField(to='clients.Client')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Subscriptions',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('subscription', models.CharField(max_length=50)),
                ('client_subscriptions', models.ManyToManyField(to='clients.Client')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
