from django.db import models

class Pertence(models.Model):
    codigo_grupo = models.ForeignKey('Grupo', primary_key=True)#Duda si se hace asi
    codigo_usuario = models.ForeignKey('Usuario')#Duda si se hace asi