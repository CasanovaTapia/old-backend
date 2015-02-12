from django.contrib.auth.models import User
from tastypie.resources import ModelResource
from orders.models import Order
from clients.models import Client

class UserResource(ModelResource):
    class Meta:
        queryset = User.objects.all()
        resource_name = 'user'

class OrderResource(ModelResource):
    class Meta:
        queryset = Order.objects.all()
        resource_name = 'orders'

class ClientResource(ModelResource):
	class Meta:
		queryset = Client.objects.all()
		resource_name = "clients"

