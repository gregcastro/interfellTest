from rest_framework.permissions import BasePermission

import utils.strings as strings


class UserAllowOnlyCreate(BasePermission):
	def has_permission(self, request, view):
		self.message = strings.no_permission_action
		if (request.method == 'GET'):
			return (request.user.is_authenticated and request.user.is_superuser)
		return True


class UserisOwnerOrAdmin(BasePermission):
	def has_object_permission(self, request, view, obj):
		self.message = strings.no_permission_action
		if request.method == 'GET' or request.method == 'PUT' or request.method == 'PATCH':
			return ((request.user.is_authenticated and request.user.is_superuser) or (str(obj) == str(request.user)))
		elif request.method == 'DELETE':
			return request.user.is_superuser
