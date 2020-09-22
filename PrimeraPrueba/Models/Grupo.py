from django.db import models

class Grupo(models.Model):
    nombre = models.CharField(max_length=50)
    codigo = models.UUIDField(primary_key=True, max_length=50, editable=False)
    codog_admin = models.UUIDField(max_length=50)
