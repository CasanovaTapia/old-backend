# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('procurements', '0003_userfullname'),
    ]

    operations = [
        migrations.DeleteModel(
            name='UserFullName',
        ),
    ]
