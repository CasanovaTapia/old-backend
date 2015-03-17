# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0005_merge'),
    ]

    operations = [
        migrations.AlterField(
            model_name='brand',
            name='brand_pic',
            field=models.FileField(null=True, upload_to=b'%Y/%m/%d/', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_color',
            field=models.CharField(max_length=30),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_material',
            field=models.CharField(max_length=30),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_order',
            field=models.ManyToManyField(to='orders.Order'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_price',
            field=models.IntegerField(),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='products',
            name='product_size',
            field=models.CharField(max_length=30),
            preserve_default=True,
        ),
    ]
