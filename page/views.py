from django.shortcuts import render
from django.template import RequestContext,loader
from django.shortcuts import render_to_response
from django.http import StreamingHttpResponse,HttpResponseRedirect
from django.contrib.auth import login,authenticate
from django.contrib.auth.models import User

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

def lapelLogin(request,why_it_failed=""):
    template = "page/sign-in.html"
    context = {"why_it_failed":why_it_failed}
    return render_to_response(template, context_instance=RequestContext(request,context))


def lapelAuthenticate(request):
    try:
        email = request.POST["email"]
    except:
        return lapelLogin(request,"No Email")
    try:
        password = request.POST["password"]
    except:
        return lapelLogin(request,"No Password")
    try:
        user = User.objects.get(email=email)
    except:
        return lapelLogin(request,"No User")
    if user.check_password(password):
        user = authenticate(username=user.username, password=password)
        if user is None:
            return lapellogin(request,"Invalid Login")
        login(request, user)
        request.session.set_expiry(60 * 60 * 1)
    else:
        return lapelLogin(request,"Bad Password")
 

    return HttpResponseRedirect("/")
