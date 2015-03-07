from django.db import models
from clients.models import Client


class Order(models.Model):
	STATUS_CHOICES = (
    	(u'Not Fullfilled', u'Not Fullfilled'),
    	(u'Tailoring', u'Tailoring'),
    	(u'Shipped', u'Shipped'),
	)
	client = models.ForeignKey('clients.Client')
	order_status = models.CharField(max_length=30, choices=STATUS_CHOICES)
	order_total_price = models.CharField(max_length=30)
	created = models.DateTimeField(auto_now_add=True)
	def __unicode__(self):
		return unicode(self.id)
