from django.conf.urls import url
from rest_framework.urlpatterns import format_suffix_patterns

from .views import UserListCreateAPIView, UserRetrieveUpdateDestroyAPIView


urlpatterns = format_suffix_patterns([

	url(r'^users?/?$', UserListCreateAPIView.as_view(), name='user-list-create'),
	url(r'^users/(?P<pk>\d+)?/?$', UserRetrieveUpdateDestroyAPIView.as_view(), name='user-detail-edit-delete'),

])
