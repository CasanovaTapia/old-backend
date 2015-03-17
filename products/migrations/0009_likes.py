# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0004_auto_20150317_0636'),
        ('products', '0008_lookbook_lookbook_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='Likes',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('client_likes', models.ManyToManyField(to='clients.Client')),
                ('lookbook_likes', models.ManyToManyField(to='products.Lookbook')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
