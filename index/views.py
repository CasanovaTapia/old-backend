from django.shortcuts import render
from django.template import RequestContext,loader
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout
import page.views as page_app

@login_required(login_url='/page')
def index(request):
	template_path = "index/index.html"
	template = loader.get_template(template_path)
	context = {}
	context = RequestContext(request,context)
	index_html = template.render(context)
	return page_app.page(request,index_html)
