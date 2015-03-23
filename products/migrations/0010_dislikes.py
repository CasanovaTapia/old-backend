# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0005_auto_20150321_0501'),
        ('products', '0009_likes'),
    ]

    operations = [
        migrations.CreateModel(
            name='Dislikes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('client_dislikes', models.ManyToManyField(to='clients.Client')),
                ('lookbook_dislikes', models.ManyToManyField(to='products.Lookbook')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
