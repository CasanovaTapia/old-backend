# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0002_client_profie_pic'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='profie_pic',
            field=models.FileField(upload_to=b'%Y/%m/%d/'),
            preserve_default=True,
        ),
    ]
