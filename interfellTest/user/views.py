from django.shortcuts import render

from serializers import UserListSerializer, UserDetailSerializer
from .permissions import UserAllowOnlyCreate, UserisOwnerOrAdmin


class UserListCreateAPIView(ListCreateAPIView):
	queryset = User.objects.all()
	serializer_class = UserListSerializer
	permission_classes = [UserAllowOnlyCreate]


class UserRetrieveUpdateDestroyAPIView(RetrieveUpdateDestroyAPIView):
	queryset = User.objects.all()
	serializer_class = UserDetailSerializer
	permission_classes = [UserisOwnerOrAdmin]
