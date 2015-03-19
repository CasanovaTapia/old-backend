from django.db import models

class Client(models.Model):
	full_name = models.CharField(max_length=50,null=True, blank=True)
	phone = models.CharField(max_length=30,null=True, blank=True)
	email = models.EmailField(max_length=254,null=True, blank=True)
	age = models.CharField(max_length=3,null=True, blank=True)
	address = models.CharField(max_length=50,null=True, blank=True)
	contact_method = models.CharField(max_length=30,null=True, blank=True)
	occupation = models.CharField(max_length=30,null=True, blank=True)
	tier = models.CharField(max_length=30,null=True, blank=True)
	birthday = models.CharField(max_length=30,null=True, blank=True)
	relationship_status = models.CharField(max_length=30,null=True, blank=True)
	sales_rep = models.CharField(max_length=30,null=True, blank=True)
	meeting_location = models.CharField(max_length=30,null=True, blank=True)
	contact_person = models.CharField(max_length=30,null=True, blank=True)
	profie_pic = models.FileField(upload_to='%Y/%m/%d/',null=True, blank=True, default='/page/static/page/img/lapel_black-1.png')

	def __unicode__(self):
		return unicode(self.full_name)

class Interests(models.Model):
	client_interests = models.ManyToManyField(Client)
	interest = models.CharField(max_length=50)


class Subscriptions(models.Model):
	client_subscriptions = models.ManyToManyField(Client)
	subscription = models.CharField(max_length=50)	
