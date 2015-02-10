# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '__first__'),
    ]

    operations = [
        migrations.CreateModel(
            name='Products',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('product_name', models.CharField(max_length=100)),
                ('product_type', models.CharField(max_length=30)),
                ('product_size', models.CharField(max_length=30)),
                ('product_color', models.CharField(max_length=30)),
                ('product_material', models.CharField(max_length=30)),
                ('product_price', models.IntegerField()),
                ('product_order', models.ManyToManyField(to='orders.Order')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
