# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='client',
            name='profie_pic',
            field=models.FileField(default=2, upload_to=b'/%Y/%m/%d'),
            preserve_default=False,
        ),
    ]
