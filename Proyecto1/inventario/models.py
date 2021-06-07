from django.db import models
from django.utils import timezone

class Formulario (models.Model):
    nombre_responsable= models.CharField(max_length=15)
    bibloteca= models.CharField(max_length=30)
    fecha_inicio=models.DateTimeField(blank=True,null=True)
    fecha_termino=models.DateTimeField(blank=True,null=True)
    id_usuario=models.ForeignKey('auth.User',on_delete=models.CASCADE)
    fecha_publicacion = models.DateTimeField(default=timezone.now())
    disponible = models.BooleanField(default=False)

    def publish(self):
        self.fecha_publicacion=timezone.now()
        self.save()

    def __str__(self):
        return  self.nombre_responsable

class Valores_conceptos(models.Model):
    resp= models.IntegerField() 
    cd= models.IntegerField() 
    libros= models.IntegerField() 
    ssue= models.IntegerField() 
    nombre_concepto= models.CharField(max_length=50)
    disponible = models.BooleanField(default=False)
    id_formulario=models.ForeignKey(Formulario,on_delete=models.CASCADE)
    