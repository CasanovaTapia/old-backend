import page.views
from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
url(r'^$', page.views.lapelLogin, name='login'),
url(r'^auth$', page.views.lapelAuthenticate, name='auth'),
)
