from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.template import RequestContext,loader
import page.views as page_app
from django.shortcuts import redirect
from procurements.models import Procurement
from rest_framework import serializers
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from lapelBackend.urls import ProcurementSerializer

@login_required(login_url='/page')
def procurements(request):
	template_path = "procurements/procurements.html"
	template = loader.get_template(template_path)
	procurements_list = Procurement.objects.all()
	context = {"procurements_list":procurements_list,}
	context = RequestContext(request,context)
	procurements_html = template.render(context)
	return page_app.page(request,procurements_html)

@api_view(['POST'])
def create_procurement(request):
	if request.method == 'POST':
		data = {'brand_name': request.DATA.get('brandName'),'sales_rep': request.DATA.get('salesRep'),'sku': request.DATA.get('sku'),'price': request.DATA.get('price')}
		serializer = ProcurementSerializer(data=data)
		if serializer.is_valid():
			serializer.save()
			return redirect('/procurements/')
		return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
	return page_app.page(request)
