from django.contrib.auth.backends import BaseBackend
from .models import Usuarios

class UsuariosBackend(BaseBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = Usuarios.objects.get(username=username)
        except Usuarios.DoesNotExist:
            return None
        
        if user.check_password(password):
            return user
        
        return None
    
    def get_user(self, user_id):
        try:
            return Usuarios.objects.get(pk=user_id)
        except Usuarios.DoesNotExist:
            return None
    
    def user_can_authenticate(self, user):
        return True
