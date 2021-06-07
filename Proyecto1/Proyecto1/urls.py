from django.contrib import admin
from django.urls import path
from Proyecto1.views import *
from inventario.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('formulario/<int:id_formulario>',consultar_formulario),
    path('insertar_formulario/',ingresar_formulario),
    path('ingresar_valores/<int:pk>',ingresar_valores),
    path('eliminar_concepto/<int:pk>/<int:formulario_id>',delete_concepto),
    path('index/', formulario_list),
    path('estadisticas/', formulario_estadisticas)
]
