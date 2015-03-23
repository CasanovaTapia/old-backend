# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('clients', '0004_auto_20150317_0636'),
    ]

    operations = [
        migrations.AlterField(
            model_name='client',
            name='profie_pic',
            field=models.FileField(default=b'/page/static/page/img/lapel_black-1.png', null=True, upload_to=b'', blank=True),
            preserve_default=True,
        ),
    ]
