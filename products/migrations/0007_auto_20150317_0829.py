# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0006_auto_20150317_0617'),
    ]

    operations = [
        migrations.CreateModel(
            name='Lookbook',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('lookbook_pic', models.FileField(null=True, upload_to=b'%Y/%m/%d/', blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='LookbookCategory',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('category_name', models.CharField(max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='lookbook',
            name='category',
            field=models.ForeignKey(to='products.LookbookCategory'),
            preserve_default=True,
        ),
    ]
