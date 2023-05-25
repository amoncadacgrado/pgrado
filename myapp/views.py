from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate
from .models import Usuarios
from .models import GruposRelacion
import logging

def login_view(request):
    error_message = None
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        logging.debug(f'usuario: {username}  contraseña: {password}')
        
        try:
            user = Usuarios.objects.get(username=username)
            if user.check_password(password):
                # Las credenciales son válidas
                login(request, user, backend='django.contrib.auth.backends.ModelBackend')
                logging.debug(f'Usuario {username} ha iniciado sesión correctamente')
                return redirect('menu')
        except Usuarios.DoesNotExist:
            pass
        
        # Las credenciales son inválidas
        error_message = "Credenciales inválidas. Por favor, intenta nuevamente."
        logging.debug(f'Intento de inicio de sesión fallido para el usuario {username} con contraseña {password}')
    
    return render(request, 'login.html', {'error_message': error_message})

def registro_view(request):
    error_message = None
    if request.method == 'POST':
        username = request.POST.get('username')
        raw_password = request.POST.get('password')
        name = request.POST.get('name')
        lastname = request.POST.get('lastname')
        
        # Verificar si el usuario ya existe
        if Usuarios.objects.filter(username=username).exists():
            error_message = "El nombre de usuario ya está en uso. Por favor, elige otro nombre de usuario."
            return render(request, 'registro.html', {'error_message': error_message})
        
        # Crear un nuevo usuario
        usuario = Usuarios(username=username, nombre=name, apellido=lastname)
        usuario.set_password(raw_password)  # Almacenar el hash de la contraseña
        usuario.save()
        
        # Iniciar sesión automáticamente
        user = authenticate(request, username=username, password=raw_password)
        login(request, user)
        
        # Redirigir al menú principal
        return redirect('menu')
    else:
        return render(request, 'registro.html', {'error_message': error_message})


def menu_view(request):
    if not request.user.is_authenticated:
        return redirect('index')
    return render(request, 'menu.html')

def logout_view(request):
    logout(request)
    return redirect('login')

def index_view(request):
    # Lógica de la vista del menú principal
    return render(request, 'index.html')

def projects_view(request):
    # Lógica de la vista del menú principal
    return render(request, 'projects.html')



def proyectos(request):
    proyectos = Proyecto.objects.all()  # Obtener todos los proyectos desde la base de datos

    context = {
        'proyectos': proyectos
    }

    return render(request, 'proyectos.html', context)


# Create your views here.
