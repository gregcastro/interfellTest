from rest_framework import serializers
from django.contrib.auth import authenticate

from . models import User, Country, City, AcademicDegree


class UserListSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'first_name', 'last_name', 'username', 'email', 'password', 'city', 'academic_degree', 'address')

    def create(self, validated_data):
        password = validated_data.pop('password', None)
        instance = self.Meta.model(**validated_data)
        if password is not None:
            instance.set_password(password)
        instance.save()
        return instance


class UserDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username', 'email', 'city', 'password', 'academic_degree', 'address')


class UserUpdateSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'email', 'city', 'academic_degree', 'address')


class CountryListSerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = ('__all__')


class CityListSerializer(serializers.ModelSerializer):
    class Meta:
        model = City
        fields = ('__all__')


class AcademicDegreeListSerializer(serializers.ModelSerializer):
    class Meta:
        model = AcademicDegree
        fields = ('__all__')