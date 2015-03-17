from django.shortcuts import render_to_response
from django.template import RequestContext,loader
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
import page.views as page_app
from .models import Client
from orders.models import Order
from products.models import Products
#from .models import Document
#from .forms import DocumentForm

@login_required(login_url='/page')
def clients(request):
	template_path = "clients/clients.html"
	template = loader.get_template(template_path)
	clients_list = Client.objects.all()
	context = {"clients_list":clients_list}
	context = RequestContext(request,context)
	clients_html = template.render(context)
	return page_app.page(request,clients_html)

@login_required(login_url='/page')
def detail(request,id):
	template_path = "clients/client_detail.html"
	template = loader.get_template(template_path)
	client_detail = Client.objects.filter(pk=id)
	#client_spec = Order.objects.get(client=client_detail)
	order_detail = Order.objects.all()
	product_detail = Products.objects.all()

	context = {"client_detail":client_detail,
				"order_detail":order_detail,
				"product_detail":product_detail,
				#"client_spec":client_spec
				}
	context = RequestContext(request,context)
	clients_html = template.render(context)
	return page_app.page(request,clients_html)


def createClient(request):
	if request.method == 'POST':
		full_name = request.POST.get("full_name", "")
		phone = request.POST.get("phone", "")
		email = request.POST.get("email", "")
		age = request.POST.get("age", "")
		address = request.POST.get("address", "")
		pic = request.FILES["profie_pic"]
		model = Client()
		model.profie_pic = pic
		model.full_name = full_name
		model.phone = phone
		model.email = email
		model.age = age
		model.address = address
		model.save()
		return HttpResponseRedirect('/clients/')

def profileUpload(request):
    # Handle file upload
    if request.method == 'POST':
        form = DocumentForm(request.POST, request.FILES)
        if form.is_valid():
            newpic = Document(picfile = request.FILES['picfile'])
            newpic.save()

	return (request)

