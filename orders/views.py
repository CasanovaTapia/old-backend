from django.shortcuts import render
from django.template import RequestContext,loader
from orders.models import Order
from clients.models import Client
from products.models import Products
import page.views as page_app
from django.views.generic import TemplateView

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

def detail(request,id):
	template_path = "orders/order_detail.html"
	template = loader.get_template(template_path)
	order_detail = Products.objects.filter(pk=id)
	context = {"order_detail":order_detail}
	context = RequestContext(request,context)
	orders_html = template.render(context)
	return page_app.page(request,orders_html)

