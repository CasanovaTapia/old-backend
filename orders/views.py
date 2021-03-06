from django.shortcuts import render
from django.template import RequestContext,loader
from django.shortcuts import redirect
from orders.models import Order
from clients.models import Client
from django.contrib.auth.decorators import login_required
from products.models import Products
import page.views as page_app
from django.views.generic import TemplateView
from lapelBackend.urls import OrderStatusUpdateSerializer
from rest_framework import serializers
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.reverse import reverse


@login_required(login_url='/page')
def orders(request):
	template_path = "orders/orders.html"
	template = loader.get_template(template_path)
	client_list = Client.objects.all()
	order_list = Order.objects.all()
	context = {"order_list":order_list,
				"client_list":client_list,}
	context = RequestContext(request,context)
	orders_html = template.render(context)
	return page_app.page(request,orders_html)

@login_required(login_url='/page')
def detail(request,id):
	template_path = "orders/order_detail.html"
	template = loader.get_template(template_path)
	order_detail = Order.objects.filter(pk=id)
	for order in order_detail:
		client = order.client
		client_detail = Client.objects.filter(pk=client.id)
		break
	products_detail = Products.objects.filter(product_order = order_detail)
	
	context = {"products_detail":products_detail,
		   "order_detail":order_detail,
		   "client_detail":client_detail}
	context = RequestContext(request,context)
	orders_html = template.render(context)
	return page_app.page(request,orders_html)

def create_order(request):
	template_path = "orders/create_order.html"
	template = loader.get_template(template_path)
	context = {}
	context = RequestContext(request,context)
	create_order_html = template.render(context)
	return page_app.page(request,create_order_html)


@api_view(['PUT'])
def order_status_update(request):
	if request.method == 'PUT':
		data = {'order_status': request.DATA.get('orderform'),'id': request.DATA.get('orderid'),'client': request.DATA.get('clientid')}
		pk = request.POST.get("orderid", "")
		serializer = OrderStatusUpdateSerializer(instance=Order.objects.get(pk = pk), data=data) 
		if serializer.is_valid():
			serializer.save()
			return redirect('/orders/')
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
