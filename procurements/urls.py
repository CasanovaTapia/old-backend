import procurements.views
from django.conf.urls import patterns, include, url
urlpatterns = patterns('',
url(r'^$', procurements.views.procurements, name='procurements'),
)
