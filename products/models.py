from django.db import models
from orders.models import Order
from clients.models import Client

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

class LookbookCategory(models.Model):
	category_name = models.CharField(max_length=100)
	def __unicode__(self):
		return unicode(self.category_name)
class Lookbook(models.Model):
	category = models.ForeignKey('products.LookbookCategory')
	lookbook_pic = models.FileField(upload_to='%Y/%m/%d/',null=True, blank=True)
	lookbook_name = models.CharField(max_length=100)
	def __unicode__(self):
		return unicode(self.id)

class Likes(models.Model):
        client_likes = models.ManyToManyField(Client)
        lookbook_likes = models.ManyToManyField(Lookbook)
        def __unicode__(self):
                return unicode(self.id)

class Dislikes(models.Model):
        client_dislikes = models.ManyToManyField(Client)
        lookbook_dislikes = models.ManyToManyField(Lookbook)
        def __unicode__(self):
                return unicode(self.id)
