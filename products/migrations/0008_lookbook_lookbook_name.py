# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0007_auto_20150317_0829'),
    ]

    operations = [
        migrations.AddField(
            model_name='lookbook',
            name='lookbook_name',
            field=models.CharField(default=datetime.datetime(2015, 3, 17, 16, 57, 50, 296174, tzinfo=utc), max_length=100),
            preserve_default=False,
        ),
    ]
