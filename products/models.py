from django.db import models
from orders.models import Order

class Products(models.Model):
	product_name = models.CharField(max_length=100)
	product_type = models.CharField(max_length=30)
	product_size = models.CharField(max_length=30)
	product_color = models.CharField(max_length=30)
	product_material = models.CharField(max_length=30)
	product_price = models.IntegerField()
	product_order = models.ManyToManyField(Order)
	product_pic = models.FileField(upload_to='%Y/%m/%d/',null=True, blank=True)

	def __unicode__(self):
		return unicode(self.product_name)


class Brand(models.Model):
	brand_name = models.CharField(max_length=100)
	brand_pic = models.FileField(upload_to='%Y/%m/%d/',null=True, blank=True)
	def __unicode__(self):
		return unicode(self.brand_name)

