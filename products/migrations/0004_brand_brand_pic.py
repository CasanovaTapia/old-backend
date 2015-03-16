# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0003_brand'),
    ]

    operations = [
        migrations.AddField(
            model_name='brand',
            name='brand_pic',
            field=models.FileField(default=datetime.datetime(2015, 3, 16, 17, 2, 43, 373823, tzinfo=utc), upload_to=b'%Y/%m/%d/'),
            preserve_default=False,
        ),
    ]
