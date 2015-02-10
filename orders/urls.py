import orders.views
from django.conf.urls import patterns, include, url
from orders import views

urlpatterns = patterns('',
url(r'^$', orders.views.orders, name='orders'),
url(r'^(?P<id>\d+)/$', orders.views.detail, name='detail'),
)
