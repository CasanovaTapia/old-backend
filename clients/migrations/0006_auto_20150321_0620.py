# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0005_auto_20150321_0501'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='profie_pic',
            field=models.FileField(default=b'/page/static/page/img/lapel_black-1.png', null=True, upload_to=b'client_avatars', blank=True),
            preserve_default=True,
        ),
    ]
