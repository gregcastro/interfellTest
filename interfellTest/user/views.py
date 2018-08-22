from django.shortcuts import render
from rest_framework import status
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework.decorators import api_view, permission_classes
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
	permission_classes = [UserisOwnerOrAdmin]
	# permission_classes = [AllowAny]


class CountryListAPIView(ListAPIView):
	queryset = Country.objects.all()
	serializer_class = CountryListSerializer
	permission_classes = [AllowAny]


class AcademicDegreeListAPIView(ListAPIView):
	queryset = AcademicDegree.objects.all()
	serializer_class = AcademicDegreeListSerializer
	permission_classes = [AllowAny]


class CityListAPIView(ListAPIView):
	serializer_class = CityListSerializer
	permission_classes = [AllowAny]

	def get_queryset(self):
		queryset = City.objects.all()
		country = self.request.query_params.get('country', None)
		if country is not None:
			queryset = queryset.filter(country=country)
		return queryset


@api_view(['GET'])
@permission_classes((AllowAny, ))
def CountryRetrieveAPIView(request):

	country = Country.objects.get(city=request.user.city)
	serializer = CountryListSerializer(country)

	return Response(serializer.data, status=status.HTTP_200_OK)
