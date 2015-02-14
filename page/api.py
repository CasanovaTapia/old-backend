from django.contrib.auth.models import User
from tastypie.resources import ModelResource
from tastypie.authorization import Authorization
from orders.models import Order
from clients.models import Client
from tastypie import fields

class UserResource(ModelResource):
	class Meta:
		queryset = User.objects.all()
		resource_name = 'user'
		authorization= Authorization()
	
class ClientResource(ModelResource):
	class Meta:
		queryset = Client.objects.all()
		resource_name = "client"
		authorization= Authorization()

class OrderResource(ModelResource):
	client = fields.ForeignKey(ClientResource, 'client')
	class Meta:
		queryset = Order.objects.all()
		resource_name = 'orders'
		authorization= Authorization()
	
