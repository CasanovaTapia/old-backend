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
	
