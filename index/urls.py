import index.views
from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
url(r'^$', 'index.views.index', name='index'),
)
