from django.db import models
from django.contrib.auth.hashers import make_password
from django.contrib.auth.hashers import check_password
from django.contrib.auth.models import AbstractUser

class GruposIndicadores(models.Model):
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return self.nombre
    
    

class Indicadores(models.Model):
    enunciado = models.CharField(max_length=100)
    grupos_indicadores = models.ForeignKey(GruposIndicadores, on_delete=models.CASCADE)

    def __str__(self):
        return self.enunciado

class GruposAlumnos(models.Model):
    nombre = models.CharField(max_length=50)

    def __str__(self):
        return self.nombre

class Alumnos(models.Model):
    nombre = models.CharField(max_length=50)
    apellido = models.CharField(max_length=50)
    grupos_alumnos = models.ForeignKey(GruposAlumnos, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.nombre} {self.apellido}"

class Usuarios(AbstractUser):
    username = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=128)
    nombre = models.CharField(max_length=50)
    apellido = models.CharField(max_length=50)

    # Nombre del campo que se utilizará como nombre de usuario
    USERNAME_FIELD = 'username'

    # Campos adicionales requeridos al crear un nuevo usuario
    REQUIRED_FIELDS = ['nombre', 'apellido']

    def set_password(self, raw_password):
        self.password = make_password(raw_password)

    def check_password(self, raw_password):
        return check_password(raw_password, self.password)

    def __str__(self):
        return f"{self.username}"

class Cumplimientos(models.Model):
    indicador = models.ForeignKey(Indicadores, on_delete=models.CASCADE)
    alumno = models.ForeignKey(Alumnos, on_delete=models.CASCADE)
    cumplido = models.CharField(max_length=2, choices=[('Si', 'Si'), ('No', 'No')])

    def __str__(self):
        return f"{self.indicador} - {self.alumno}"

class GruposRelacion(models.Model):
    nombre = models.CharField(max_length=50)
    grupo_estudiantes = models.ForeignKey(GruposAlumnos, on_delete=models.CASCADE)
    grupo_indicadores = models.ForeignKey(GruposIndicadores, on_delete=models.CASCADE)
    usuarios = models.ForeignKey(Usuarios, on_delete=models.CASCADE)
    
    def __str__(self):
        return f"{self.nombre} - {self.grupo_estudiantes} - {self.grupo_indicadores} - {self.usuarios}"

