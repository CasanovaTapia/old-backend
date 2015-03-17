from django.contrib import admin
from .models import Products, Brand, LookbookCategory, Lookbook

admin.site.register(Products)

admin.site.register(Brand)

admin.site.register(LookbookCategory)

admin.site.register(Lookbook)
