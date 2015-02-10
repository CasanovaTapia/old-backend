from django.shortcuts import render
from django.template import RequestContext,loader
from django.http import StreamingHttpResponse,HttpResponseRedirect

# Page collects all reusable code and functions.

def page(request,application_html):
	template_path = "page/page.html"
	navbar_html = navbar(request)
	sidebar_html = sidebar(request)
	context = {"application": application_html,
				"navbar": navbar_html,
				"sidebar": sidebar_html,}
	template = loader.get_template(template_path)
	context = RequestContext(request,context)
	return StreamingHttpResponse(template.render(context))


def navbar(request):
	template_path = "page/navbar.html"
	context = {}
	template = loader.get_template(template_path)
	context = RequestContext(request,context)
	return template.render(context)

def sidebar(request):
	template_path = "page/sidebar.html"
	context = {}
	template = loader.get_template(template_path)
	context = RequestContext(request,context)
	return template.render(context)
