from django.db import models

class Pertence(models.Model):
    codigo_grupo = models.ForeignKey('Grupo', primary_key=True, on_delete=models.CASCADE)#Duda si se hace asi
    codigo_usuario = models.ForeignKey('Usuario', on_delete=models.CASCADE)#Duda si se hace asi