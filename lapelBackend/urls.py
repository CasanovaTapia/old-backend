from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from tastypie.api import Api
from page.api import OrderResource, UserResource, ClientResource


v1_api = Api(api_name='v1')
v1_api.register(UserResource())
v1_api.register(OrderResource())
v1_api.register(ClientResource())

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'lapelBackend.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
	url(r"^$", include("index.urls")),
	url(r'^page/', include("page.urls")),
	url(r'^orders/', include("orders.urls", namespace="orders")),
	url(r'^clients/', include("clients.urls", namespace="clients")),
	url(r'^procurements/', include("procurements.urls")),
	url(r'^api/', include(v1_api.urls)),
	url(r'^avatar/', include('avatar.urls')),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
