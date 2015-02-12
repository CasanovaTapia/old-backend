from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.template import RequestContext,loader
import page.views as page_app

@login_required(login_url='/page')
def procurements(request):
	template_path = "procurements/procurements.html"
	template = loader.get_template(template_path)
	#clients_list = Client.objects.all()
	context = {}
	context = RequestContext(request,context)
	procurements_html = template.render(context)
	return page_app.page(request,procurements_html)

