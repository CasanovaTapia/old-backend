from django.db import models

class Client(models.Model):
	full_name = models.CharField(max_length=50)
	phone = models.CharField(max_length=30)
	email = models.EmailField(max_length=254)
	age = models.CharField(max_length=3)
	address = models.CharField(max_length=50)
	contact_method = models.CharField(max_length=30)
	occupation = models.CharField(max_length=30)
	tier = models.CharField(max_length=30)
	birthday = models.CharField(max_length=30)
	relationship_status = models.CharField(max_length=30)
	sales_rep = models.CharField(max_length=30)
	meeting_location = models.CharField(max_length=30)
	contact_person = models.CharField(max_length=30)
	profie_pic = models.FileField(upload_to='%Y/%m/%d/')

	def __unicode__(self):
		return unicode(self.full_name)

class Interests(models.Model):
	client_interests = models.ManyToManyField(Client)
	interest = models.CharField(max_length=50)

class Subscriptions(models.Model):
	client_subscriptions = models.ManyToManyField(Client)
	subscription = models.CharField(max_length=50)	
