import clients.views
from django.conf.urls import patterns, url

urlpatterns = patterns('clients.views',
	url(r'^$', clients.views.clients, name='clients'),
    url(r'^profileUpload/$', 'profileUpload', name='profileUpload'),
	url(r'^(?P<id>\d+)/$', clients.views.detail, name='detail'),
	url(r'^clientCreate/$', clients.views.createClient, name='clientCreate'),
)
