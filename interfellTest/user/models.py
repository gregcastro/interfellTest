from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
	city = models.ForeignKey('City', on_delete=models.CASCADE, null=True)
	academic_degree = models.ForeignKey('AcademicDegree', on_delete=models.CASCADE, null=True)
	address = models.TextField(blank=True)

	class Meta:
		db_table = 'user'

	def __str__(self):
		return '{} {}'.format(self.first_name, self.last_name)


class Country(models.Model):
	name = models.CharField(max_length=30)

	class Meta:
		db_table = 'country'

	def __str__(self):
		return self.name


class City(models.Model):
	name = models.CharField(max_length=30)
	country = models.ForeignKey('Country', on_delete=models.CASCADE)

	class Meta:
		db_table = 'city'

	def __str__(self):
		return '{}, {}'.format(self.name, self.country.name)


class AcademicDegree(models.Model):
	name = models.CharField(max_length=30)

	class Meta:
		db_table = 'academic_degree'

	def __str__(self):
		return self.name
