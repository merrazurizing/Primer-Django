from django import forms
from .models import *
from django.forms.widgets import DateTimeInput

class Postformulario(forms.ModelForm):
    class Meta:
        model = Formulario
        fields = ('nombre_responsable','bibloteca','fecha_inicio','fecha_termino')
        widgets= {
            'fecha_inicio' : DateTimeInput(attrs={'type': 'datetime-local'}),
            'fecha_termino' : DateTimeInput(attrs={'type': 'datetime-local'}),
        }

class PostformularioValores(forms.ModelForm):
    class Meta:
        model = Valores_conceptos
        fields = ('nombre_concepto','resp','cd','libros','ssue')

    