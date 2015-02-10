from django.db import models
from clients.models import Client

class Order(models.Model):
	client = models.ForeignKey('clients.Client')
	order_status = models.CharField(max_length=30)
	order_total_price = models.CharField(max_length=30)
	created = models.DateTimeField(auto_now_add=True)
	def __unicode__(self):
		return unicode(self.id)
