from django.shortcuts import render
from django.template import RequestContext,loader
from orders.models import Order
from clients.models import Client
from django.contrib.auth.decorators import login_required
from products.models import Products
import page.views as page_app
from django.views.generic import TemplateView

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
	order_detail = Products.objects.filter(pk=id)
	context = {"order_detail":order_detail,}
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

def order_status_update(request,id):
	status_update = Order.objects.filter(pk=id)
	#status_update.order_status = 	
	return(request)
