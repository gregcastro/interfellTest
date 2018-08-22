from django.conf.urls import url
from rest_framework.urlpatterns import format_suffix_patterns

from .views import UserListCreateAPIView, UserRetrieveUpdateDestroyAPIView, CountryListAPIView, CityListAPIView, AcademicDegreeListAPIView, CountryRetrieveAPIView


urlpatterns = format_suffix_patterns([

	url(r'^users?/?$', UserListCreateAPIView.as_view(), name='user-list-create'),
	url(r'^users/(?P<pk>\d+)?/?$', UserRetrieveUpdateDestroyAPIView.as_view(), name='user-detail-edit-delete'),

	url(r'^countries?/?$', CountryListAPIView.as_view(), name='country-list'),
	url(r'^cities?/?$', CityListAPIView.as_view(), name='city-list'),
	url(r'^academicDegrees?/?$', AcademicDegreeListAPIView.as_view(), name='academic-degree-list'),

	url(r'^countryByUser?/?$', CountryRetrieveAPIView, name='country-by-user'),

])
