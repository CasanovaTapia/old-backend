from django.db import models
from django.contrib.auth.models import User

class Procurement(models.Model):
    sales_rep = models.ForeignKey(User)
    brand_name = models.CharField(max_length=50)
    sku = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    created = models.DateTimeField(auto_now_add=True)
    def __unicode__(self):
		return unicode(self.brand_name)

class ProcurementProducts(models.Model):
    procurement = models.ManyToManyField(Procurement)
    item_name = models.CharField(max_length=50)
    item_type = models.CharField(max_length=50)
    def __unicode__(self):
    	return unicode(self.item_name)
