from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.auth.models import User
from orders.models import Order
from clients.models import Client
from products.models import Products, Brand
from rest_framework import routers, serializers, viewsets

# Serializers define the API representation.
class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ('url', 'username', 'email', 'is_staff')

class OrderSerializer(serializers.ModelSerializer):
    class Meta:
	model = Order
	fields = ('id','url','client','order_status','order_total_price','created')

class OrderStatusUpdateSerializer(serializers.ModelSerializer):
    class Meta:
	model = Order
	fields = ('id','order_status','client')

class ClientSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
	model = Client
	fields = ('id','url','full_name','phone','email','age','address','contact_method','occupation','tier','birthday','relationship_status','sales_rep','meeting_location','contact_person','profie_pic')

class ProductsSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
	model = Products
	fields = ('product_name','product_type','product_size','product_color','product_material','product_price','product_order','product_pic')

class BrandSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Brand
        fields = ('id','brand_name','brand_pic')


# ViewSets define the view behavior.
class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class OrderViewSet(viewsets.ModelViewSet):
    queryset = Order.objects.all()
    serializer_class = OrderSerializer

class ClientViewSet(viewsets.ModelViewSet):
    queryset = Client.objects.all()
    serializer_class = ClientSerializer

class ProductsViewSet(viewsets.ModelViewSet):
    queryset = Products.objects.all()
    serializer_class = ProductsSerializer

class BrandViewSet(viewsets.ModelViewSet):
    queryset = Brand.objects.all()
    serializer_class = BrandSerializer


# Routers provide an easy way of automatically determining the URL conf.
router = routers.DefaultRouter()
router.register(r'users', UserViewSet)
router.register(r'orders',OrderViewSet)
router.register(r'clients',ClientViewSet)
router.register(r'products',ProductsViewSet)
router.register(r'brands',BrandViewSet)
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
	url(r'^avatar/', include('avatar.urls')),
	url(r'^api/', include(router.urls)),
	url(r'^docs/', include('rest_framework_swagger.urls')),
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
