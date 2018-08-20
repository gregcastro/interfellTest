from django.shortcuts import render
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView

from .models import User
from .permissions import UserAllowOnlyCreate, UserisOwnerOrAdmin
from .serializers import UserListSerializer, UserDetailSerializer


class UserListCreateAPIView(ListCreateAPIView):
	queryset = User.objects.all()
	serializer_class = UserListSerializer
	permission_classes = [UserAllowOnlyCreate]


class UserRetrieveUpdateDestroyAPIView(RetrieveUpdateDestroyAPIView):
	queryset = User.objects.all()
	serializer_class = UserDetailSerializer
	permission_classes = [UserisOwnerOrAdmin]
