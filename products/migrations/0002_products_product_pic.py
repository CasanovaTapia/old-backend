# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='product_pic',
            field=models.FileField(default=datetime.datetime(2015, 2, 4, 19, 40, 48, 492528, tzinfo=utc), upload_to=b'%Y/%m/%d/'),
            preserve_default=False,
        ),
    ]
