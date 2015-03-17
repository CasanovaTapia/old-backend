# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0002_products_product_pic'),
    ]

    operations = [
        migrations.AlterField(
            model_name='products',
            name='product_color',
            field=models.CharField(max_length=30, null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_material',
            field=models.CharField(max_length=30, null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_order',
            field=models.ManyToManyField(to='orders.Order', null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_pic',
            field=models.FileField(null=True, upload_to=b'%Y/%m/%d/', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_price',
            field=models.IntegerField(null=True, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_size',
            field=models.CharField(max_length=30, null=True, blank=True),
            preserve_default=True,
        ),
    ]
