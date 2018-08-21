from django.shortcuts import render
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView, ListAPIView

from .models import User, Country, City, AcademicDegree
from .permissions import UserAllowOnlyCreate, UserisOwnerOrAdmin
from .serializers import UserListSerializer, UserDetailSerializer, CountryListSerializer, CityListSerializer, AcademicDegreeListSerializer, UserUpdateSerializer


class UserListCreateAPIView(ListCreateAPIView):
	queryset = User.objects.all()
	serializer_class = UserListSerializer
	permission_classes = [UserAllowOnlyCreate]


class UserRetrieveUpdateDestroyAPIView(RetrieveUpdateDestroyAPIView):
	queryset = User.objects.all()
	serializer_class = UserUpdateSerializer
	# permission_classes = [UserisOwnerOrAdmin]
	permission_classes = [AllowAny]


class CountryListAPIView(ListAPIView):
	queryset = Country.objects.all()
	serializer_class = CountryListSerializer
	permission_classes = [AllowAny]


class CityListAPIView(ListAPIView):
	queryset = City.objects.all()
	serializer_class = CityListSerializer
	permission_classes = [AllowAny]


class AcademicDegreeListAPIView(ListAPIView):
	queryset = AcademicDegree.objects.all()
	serializer_class = AcademicDegreeListSerializer
	permission_classes = [AllowAny]