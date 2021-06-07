from django.shortcuts import render
from .models import *
from django.utils import timezone
from django.shortcuts import render, get_object_or_404
from django.db.models import *
from .forms import *
from django.http import *
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.urls import reverse
from weasyprint import HTML, CSS
from django.template.loader import get_template
from django.contrib.auth.models import User


def delete_concepto(request, pk , formulario_id):
    if request.method:
        query = get_object_or_404(Valores_conceptos, id=pk)
        query.disponible=False
        query.save()
        conceptos = Valores_conceptos.objects.filter(
            id_formulario=pk,disponible=1).all()
        formulario = Formulario.objects.get(id=formulario_id)
        return HttpResponseRedirect(reverse(ingresar_valores, args=(formulario_id,)))
    else:
        form = PostformularioValores()
    return render(request, 'ingresar_formulario_valores.html', {'form': form , 'id_form' : formulario_id ,'formulario':formulario,
        'conceptos':conceptos})


def ingresar_formulario(request):
    if request.method == "POST":
        """ debido a que no se pidio una implementacion de sistema de usuario , esta linea toma el primer
        usuario de la lista por temas practicos . COn sistema de usario aca se filta el currentuser
        """
        user = User.objects.first()
        form = Postformulario(request.POST)
        if form.is_valid():
            formulario = form.save(commit=False)
            formulario.id_usuario=user
            formulario.disponible=True
            formulario.save()
            return HttpResponseRedirect(reverse(ingresar_valores, args=(formulario.id,)))
    else:
        form = Postformulario()
    return render(request, 'ingresar_formulario.html', {'form': form})


def ingresar_valores(request, pk):
    conceptos = Valores_conceptos.objects.filter(
        id_formulario=pk,disponible=1).all()
    formulario = Formulario.objects.get(id=pk)
    
    if request.method == "POST":
        form =PostformularioValores(request.POST)
        if form.is_valid():
            valores = form.save(commit=False)
            valores.id_formulario=formulario
            valores.disponible=True
            valores.save()
            return HttpResponseRedirect(reverse(ingresar_valores, args=(pk,)))
    else:
        form = PostformularioValores()
    return render(request, 'ingresar_formulario_valores.html', {'form': form , 'id_form' : pk ,'formulario':formulario,
        'conceptos':conceptos})


def formulario_list(request):
    query = request.GET.get('q', '')
    fecha1 = request.GET.get('qfecha1', '')
    fecha2 = request.GET.get('qfecha2', '')
    qset = (
            Q(nombre_responsable__icontains=query) |
            Q(bibloteca__icontains=query)
        )
    if query:
        results = Formulario.objects.filter(qset,disponible=1).distinct()  
    elif fecha1 and fecha2 :
        results = Formulario.objects.filter(fecha_publicacion__gte=fecha1,
                                            fecha_publicacion__lte=fecha2,disponible=1).distinct()
    elif query and fecha1 and fecha2 :
        results = Formulario.objects.filter(qset, fecha_publicacion__gte=fecha1,
                                            fecha_publicacion__lte=fecha2,disponible=1).distinct()
    else :
        results = Formulario.objects.filter(disponible=1)
    return render(request, 'buscar_formulario.html', {'formularios': results})


def consultar_formulario(request, id_formulario):
    formulario_mostrado = Formulario.objects.get(id=id_formulario)
    sumador = Valores_conceptos.objects.all()
    conceptos = Valores_conceptos.objects.filter(
        id_formulario=id_formulario).all()
    total_inventariados_ssue = 0
    total_inventariados_libros = 0
    total_inventariados_cd = 0
    total_inventariados_resp = 0
    for c in sumador:
        total_inventariados_ssue += c.ssue
        total_inventariados_libros += c.libros
        total_inventariados_cd += c.cd
        total_inventariados_resp += c.resp

    html_string = render_to_string("formulario.html", {
        'formulario': formulario_mostrado,
        'conceptos': conceptos,
        'total_inventariados_ssue': total_inventariados_ssue,
        'total_inventariados_libros': total_inventariados_libros,
        'total_inventariados_cd': total_inventariados_cd,
        'total_inventariados_resp': total_inventariados_resp})
    html = HTML(string=html_string)
    result = html.write_pdf()
    response = HttpResponse(result, content_type='application/pdf')
    response['Content-Disposition'] = 'filename="home_page.pdf"'
    return response

def formulario_estadisticas(request):
    labels = []
    data1 = []
    data2 = []
    data3 = []
    data4 = []

    queryset = Valores_conceptos.objects.all()
    for concepto in queryset:
        labels.append(concepto.nombre_concepto)
        data1.append(concepto.resp)
        data2.append(concepto.cd)
        data3.append(concepto.libros)
        data4.append(concepto.ssue)

    return render(request, 'formulario_estadisticas.html', {
        'labels': labels,
        'data1': data1,
        'data2': data2,
        'data3': data3,
        'data4': data4,
    })