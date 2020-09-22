from django.db import models

class Tarea(models.Model):
    codido = models.UUIDField(primary_key=True, max_length=50, editable=False)
    descripcion = models.TextField(max_length=1000, blank=True)
    codigo_usuario = models.ForeignKey('User')#Duda si se hace asi
    fecha_ini = models.DateField()
    fecha_fin = models.DateField() #Al crear la tarea la inciamos a null?
    codigo_grupo = models.ForeignKey('Grupo')#Duda si se hace asi