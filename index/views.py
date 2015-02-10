from django.shortcuts import render
from django.template import RequestContext,loader
import page.views as page_app

def index(request):
	template_path = "index/index.html"
	template = loader.get_template(template_path)
	context = {}
	context = RequestContext(request,context)
	index_html = template.render(context)
	return page_app.page(request,index_html)
