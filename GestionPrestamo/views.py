from django.shortcuts import render, redirect
from django.http import HttpResponse
from GestionPrestamo.models import Libro, Lector, Bibliotecario, EtiquetaLibro, Editorial, Reservacion, Idioma, LibroInstancia, TipoUsuario, GeneroLibro, AutorLibro, Pais, Usuario
from django.core.mail import send_mail
from django.conf import settings
from django.utils.timezone import now
from datetime import datetime
from GestionPrestamo.forms import Form_RegistroLibro, Form_RegistroLector, Form_RegistroBibliotecario, Form_RegistroEtiquetaLibro, Form_RegistroIdioma, Form_RegistroEditorial, Form_RegistroReservacion, Form_RegistroLibroInstancia, Form_RegistroTipoUsuario, Form_RegistroGeneroLibro, Form_RegistroAutorLibro, Form_RegistroPais, Form_RegistroUsuario #, CustomUserForm
from django.db.models import Q
from django.contrib.auth.decorators import login_required
from django.contrib.auth import login, authenticate

# Create your views here.
FORMATO_LIBRO=(
        ('e', 'E-book'),
        ('i', 'Impreso'),
        ('a', 'E-book e Impreso'),
    )
@login_required
def index(request):
    return render(request,"GestionPrestamo/index.html")
    def get(self, request, *args, **kwargs):
        if request.user.is_authenticated:
            return render(self.template_name)
        else:
            return redirect('login')


@login_required
def busquedaLibro(request):
    #usuario = Usuario.objects.filter(nombreUsuario = 'EDIT YULIANA')
    querys = (Q(tituloLibro__icontains='negocios') | Q(resumenLibro__icontains='negocios')|Q(tituloLibro__icontains='inteligencia') | Q(resumenLibro__icontains='inteligencia'))

    libros = Libro.objects.filter(querys)
    objs = Libro.objects.all()
    contexto = {
    'libros':libros,
    'objs':objs
    }
    return render(request, "GestionPrestamo/busquedaLibro.html",contexto)
@login_required
def gestionLibro(request):
    libros = Libro.objects.all()
    contexto = {
        'libros' : libros
    }
    return render(request,"GestionPrestamo/gestionLibro.html",contexto)
@login_required
def gestionUsuario(request):
    usuarios = Usuario.objects.all().order_by('-fechaCreacionUsuario')
    contexto = {
        'usuarios' : usuarios
    }
    return render(request,"GestionPrestamo/gestionUsuario.html",contexto)
@login_required
def administracion(request):
    return render(request, "GestionPrestamo/administracion.html")
@login_required
def gestionBibliotecario(request):
    objs = Bibliotecario.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionBibliotecario.html", contexto)
@login_required
def gestionEtiquetaLibro(request):
    objs = EtiquetaLibro.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionEtiquetaLibro.html", contexto)
@login_required
def gestionEditorial(request):
    objs = Editorial.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionEditorial.html", contexto)
@login_required
def gestionReservacion(request):
    objs = Reservacion.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionReservacion.html", contexto)
@login_required
def gestionIdioma(request):
    objs = Idioma.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionIdioma.html", contexto)
@login_required
def gestionLibroInstancia(request):
    objs = LibroInstancia.objects.all()
    contexto = {
        'objs' : objs,
    }
    return render(request, "GestionPrestamo/gestionLibroInstancia.html", contexto)
@login_required
def gestionTipoUsuario(request):
    objs = TipoUsuario.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionTipoUsuario.html", contexto)
@login_required
def gestionGeneroLibro(request):
    objs = GeneroLibro.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionGeneroLibro.html", contexto)
@login_required
def gestionAutorLibro(request):
    objs = AutorLibro.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionAutorLibro.html", contexto)

@login_required
def gestionPais(request):
    objs = Pais.objects.all()
    contexto = {
        'objs' : objs
    }
    return render(request, "GestionPrestamo/gestionPais.html", contexto)



@login_required
def gracias(request):
    return render(request, "gracias.html")
@login_required
def registrarLibro(request):
    cantidadLibros=(0,1,2,3,4,5,6,7,8,9,10)
    if request.method == 'GET':
        formRegistrarLibro = Form_RegistroLibro()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarLibro.fields['fechaCreacionLibro'].initial = formatedDate

        contexto = {
            'formRegistrarLibro' : formRegistrarLibro,
            'cantidadLibros' : cantidadLibros,
        }
    else:
        formRegistrarLibro = Form_RegistroLibro(request.POST)
        #formRegistrarLibroInstancia = Form_RegistroLibroInstancia()
        contexto = {
            'formRegistrarLibro' : formRegistrarLibro,
        }
        if formRegistrarLibro.is_valid():
            formRegistrarLibro.save()
            #libro = Libro.objects.latest('fechaCreacionLibro')
            #for i in [0,1,2,3,4,5,6,7,8,9,10]:
            #    formRegistrarLibroInstancia.fields['estadoPrestamoLibroInstancia'].initial = 'd'
            #    formRegistrarLibroInstancia.fields['libro_LibroInstancia'].initial = libro

            #formRegistrarLibroInstancia.save()
            return redirect('gestionLibro')

    return render(request, "GestionPrestamo/registroLibro.html", contexto)
@login_required
def modificarLibro(request, idLibro):
    libro = Libro.objects.get(idLibro= idLibro)
    if request.method == 'GET':
        formRegistrarLibro = Form_RegistroLibro(instance=libro)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarLibro.fields['fechaCreacionLibro'].initial = formatedDate
        contexto = {
            'formRegistrarLibro' : formRegistrarLibro
        }
    else:
        formRegistrarLibro = Form_RegistroLibro(request.POST, instance= libro)
        contexto = {
            'formRegistrarLibro' : formRegistrarLibro
        }
        if formRegistrarLibro.is_valid():
            formRegistrarLibro.save()
            return redirect('gestionLibro')
    return render(request, "GestionPrestamo/registroLibro.html", contexto)
@login_required
def eliminarLibro(request, idLibro):
    libro = Libro.objects.get(idLibro= idLibro)
    libro.delete()
    return redirect('gestionLibro')

def registrarUsuario(request):
    if request.method == 'GET':
        form = Form_RegistroUsuario()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        form.fields['fechaCreacionUsuario'].initial = formatedDate
        data = {
            'form' : form
        }
    else:
        form = Form_RegistroUsuario(request.POST)
        data = {
            'form' : form
        }
        if form.is_valid():
            nuevo_usuario = Usuario(
                    email=form.cleaned_data.get('email'),
                    username=form.cleaned_data.get('username'),
                    nombreUsuario=form.cleaned_data.get('nombreUsuario'),
                    apellidosUsuario=form.cleaned_data.get('apellidosUsuario')
                )
            nuevo_usuario.set_password(form.cleaned_data.get('password1'))
            nuevo_usuario.save()
            username = form.cleaned_data['username']
            password = form.cleaned_data['password1']
            user = authenticate(username=username, password=password)
            login(request,user)
            return redirect('index')
    return render(request, 'registration/registrar.html', data)
@login_required
def modificarUsuario(request, id):
    usuario = Usuario.objects.get(id= id)
    if request.method == 'GET':
        form = Form_RegistroUsuario(instance=usuario)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        fecha = myDate.strftime("-%m-%d-%Y")
        form.fields['fechaCreacionUsuario'].initial = formatedDate
        form.fields['fechaNacimientoUsuario'].initial = fecha
        #Usuario.fechaCreacionUsuario = form.cleaned_data['usuario']
        fecha = usuario.fechaNacimientoUsuario
        print(fecha)
        contexto = {
            'form' : form,
            'date': fecha,
        }
    else:
        form = Form_RegistroUsuario(request.POST, instance= usuario)
        contexto = {
            'form' : form
        }
        if form.is_valid():
            form.save()
            return redirect('gestionUsuario')
    return render(request, "GestionPrestamo/registroUsuario.html", contexto)
@login_required
def eliminarUsuario(request, id):
    usuario = Usuario.objects.get(id= id)
    usuario.delete()
    return redirect('gestionUsuario')




@login_required
def registrarBibliotecario(request):
    if request.method == 'GET':
        formRegistrarBibliotecario = Form_RegistroBibliotecario()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarBibliotecario.fields['fechaCreacionBibliotecario'].initial = formatedDate
        contexto = {
            'formRegistrarBibliotecario' : formRegistrarBibliotecario
        }
    else:
        formRegistrarBibliotecario = Form_RegistroBibliotecario(request.POST)
        contexto = {
            'formRegistrarBibliotecario' : formRegistrarBibliotecario
        }
        if formRegistrarBibliotecario.is_valid():
            formRegistrarBibliotecario.save()
            return redirect('gestionBibliotecario')

    return render(request, "GestionPrestamo/registroBibliotecario.html", contexto)
@login_required
def modificarBibliotecario(request, idBibliotecario):
    bibliotecario = Bibliotecario.objects.get(idBibliotecario= idBibliotecario)
    if request.method == 'GET':
        formRegistrarBibliotecario = Form_RegistroBibliotecario(instance=bibliotecario)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarBibliotecario.fields['fechaCreacionBibliotecario'].initial = formatedDate
        contexto = {
            'formRegistrarBibliotecario' : formRegistrarBibliotecario
        }
    else:
        formRegistrarBibliotecario = Form_RegistroBibliotecario(request.POST, instance= bibliotecario)
        contexto = {
            'formRegistrarBibliotecario' : formRegistrarBibliotecario
        }
        if formRegistrarBibliotecario.is_valid():
            formRegistrarBibliotecario.save()
            return redirect('gestionBibliotecario')
    return render(request, "GestionPrestamo/registroBibliotecario.html", contexto)
@login_required
def eliminarBibliotecario(request, idBibliotecario):
    obj = Bibliotecario.objects.get(idBibliotecario= idBibliotecario)
    obj.delete()
    return redirect('gestionBibliotecario')

@login_required
def buscar_libro(request):
    if(request.GET.get("txt_buscar")):
        #mensaje = "Libro Buscado: %r"%request.GET["txt_nombre"]
        #libro = request.GET["txt_buscar"]
        query = request.GET.get("txt_buscar")
        if len(query)>50:
            mensaje = "Titulo demasiado Largo, porfavor vuelva a intentarlo"
        else:
            #resultado = Libro.objects.filter(tituloLibro__resumenLibro__icontains = libro
            #).distinct()
            querys = (Q(tituloLibro__icontains=query) | Q(resumenLibro__icontains=query))
            #querys |= Q(editorialLibro__icontains=query)

            libros = Libro.objects.filter(querys)
            return render(request,"GestionPrestamo/form_Busqueda_Libro.html", {'libros':libros,"query":query})
    else:
        mensaje = "No has ingresado ningun libro"
    return HttpResponse(mensaje)

@login_required
def registrarEtiquetaLibro(request):
    if request.method == 'GET':
        formRegistrarEtiquetaLibro = Form_RegistroEtiquetaLibro()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarEtiquetaLibro.fields['fechaCreacionEtiquetaLibro'].initial = formatedDate
        contexto = {
            'formRegistrarEtiquetaLibro' : formRegistrarEtiquetaLibro
        }
    else:
        formRegistrarEtiquetaLibro = Form_RegistroEtiquetaLibro(request.POST)
        contexto = {
            'formRegistrarEtiquetaLibro' : formRegistrarEtiquetaLibro
        }
        if formRegistrarEtiquetaLibro.is_valid():
            formRegistrarEtiquetaLibro.save()
            return redirect('gestionEtiquetaLibro')

    return render(request, "GestionPrestamo/registroEtiquetaLibro.html", contexto)
@login_required
def modificarEtiquetaLibro(request, idEtiquetaLibro):
    etiquetaLibro = EtiquetaLibro.objects.get(idEtiquetaLibro= idEtiquetaLibro)
    if request.method == 'GET':
        formRegistrarEtiquetaLibro = Form_RegistroEtiquetaLibro(instance=etiquetaLibro)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarEtiquetaLibro.fields['fechaCreacionEtiquetaLibro'].initial = formatedDate
        contexto = {
            'formRegistrarEtiquetaLibro' : formRegistrarEtiquetaLibro
        }
    else:
        formRegistrarEtiquetaLibro = Form_RegistroEtiquetaLibro(request.POST, instance= etiquetaLibro)
        contexto = {
            'formRegistrarEtiquetaLibro' : formRegistrarEtiquetaLibro
        }
        if formRegistrarEtiquetaLibro.is_valid():
            formRegistrarEtiquetaLibro.save()
            return redirect('gestionEtiquetaLibro')
    return render(request, "GestionPrestamo/registroEtiquetaLibro.html", contexto)
@login_required
def eliminarEtiquetaLibro(request, idEtiquetaLibro):
    obj = EtiquetaLibro.objects.get(idEtiquetaLibro= idEtiquetaLibro)
    obj.delete()
    return redirect('gestionEtiquetaLibro')



@login_required
def registrarEditorial(request):
    if request.method == 'GET':
        formRegistrarEditorial = Form_RegistroEditorial()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarEditorial.fields['fechaCreacionEditorial'].initial = formatedDate
        contexto = {
            'formRegistrarEditorial' : formRegistrarEditorial
        }
    else:
        formRegistrarEditorial = Form_RegistroEditorial(request.POST)
        contexto = {
            'formRegistrarEditorial' : formRegistrarEditorial
        }
        if formRegistrarEditorial.is_valid():
            formRegistrarEditorial.save()
            return redirect('gestionEditorial')

    return render(request, "GestionPrestamo/registroEditorial.html", contexto)
@login_required
def modificarEditorial(request, idEditorial):
    editorial = Editorial.objects.get(idEditorial= idEditorial)
    if request.method == 'GET':
        formRegistrarEditorial = Form_RegistroEditorial(instance=editorial)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarEditorial.fields['fechaCreacionEditorial'].initial = formatedDate
        contexto = {
            'formRegistrarEditorial' : formRegistrarEditorial
        }
    else:
        formRegistrarEditorial = Form_RegistroEditorial(request.POST, instance= editorial)
        contexto = {
            'formRegistrarEditorial' : formRegistrarEditorial
        }
        if formRegistrarEditorial.is_valid():
            formRegistrarEditorial.save()
            return redirect('gestionEditorial')
    return render(request, "GestionPrestamo/registroEditorial.html", contexto)
@login_required
def eliminarEditorial(request, idEditorial):
    obj = Editorial.objects.get(idEditorial= idEditorial)
    obj.delete()
    return redirect('gestionEditorial')



@login_required
def registrarIdioma(request):
    if request.method == 'GET':
        formRegistrarIdioma = Form_RegistroIdioma()
        contexto = {
            'formRegistrarIdioma' : formRegistrarIdioma
        }
    else:
        formRegistrarIdioma = Form_RegistroIdioma(request.POST)
        contexto = {
            'formRegistrarIdioma' : formRegistrarIdioma
        }
        if formRegistrarIdioma.is_valid():
            formRegistrarIdioma.save()
            return redirect('gestionIdioma')

    return render(request, "GestionPrestamo/registroIdioma.html", contexto)
@login_required
def modificarIdioma(request, idIdioma):
    idioma = Idioma.objects.get(idIdioma= idIdioma)
    if request.method == 'GET':
        formRegistrarIdioma = Form_RegistroIdioma(instance=idioma)
        contexto = {
            'formRegistrarIdioma' : formRegistrarIdioma
        }
    else:
        formRegistrarIdioma = Form_RegistroIdioma(request.POST, instance= idioma)
        contexto = {
            'formRegistrarIdioma' : formRegistrarIdioma
        }
        if formRegistrarIdioma.is_valid():
            formRegistrarIdioma.save()
            return redirect('gestionIdioma')
    return render(request, "GestionPrestamo/registroIdioma.html", contexto)
@login_required
def eliminarIdioma(request, idIdioma):
    obj = Idioma.objects.get(idIdioma= idIdioma)
    obj.delete()
    return redirect('gestionIdioma')



@login_required
def registrarReservacion(request):
    if request.method == 'GET':
        formRegistrarReservacion = Form_RegistroReservacion()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d")
        formRegistrarReservacion.fields['fechaEmisionReservacion'].initial = formatedDate
        contexto = {
            'formRegistrarReservacion' : formRegistrarReservacion
        }
    else:
        formRegistrarReservacion = Form_RegistroReservacion(request.POST)
        contexto = {
            'formRegistrarReservacion' : formRegistrarReservacion
        }
        if formRegistrarReservacion.is_valid():
            formRegistrarReservacion.save()
            return redirect('gestionReservacion')

    return render(request, "GestionPrestamo/registroReservacion.html", contexto)
@login_required
def modificarReservacion(request, idReservacion):
    reservacion = Reservacion.objects.get(idReservacion= idReservacion)
    if request.method == 'GET':
        formRegistrarReservacion = Form_RegistroReservacion(instance=reservacion)
        contexto = {
            'formRegistrarReservacion' : formRegistrarReservacion
        }
    else:
        formRegistrarReservacion = Form_RegistroReservacion(request.POST, instance= reservacion)
        contexto = {
            'formRegistrarReservacion' : formRegistrarReservacion
        }
        if formRegistrarReservacion.is_valid():
            formRegistrarReservacion.save()
            return redirect('gestionReservacion')
    return render(request, "GestionPrestamo/registroReservacion.html", contexto)
@login_required
def eliminarReservacion(request, idReservacion):
    obj = Reservacion.objects.get(idReservacion= idReservacion)
    obj.delete()
    return redirect('gestionReservacion')




@login_required
def registrarLibroInstancia(request):
    if request.method == 'GET':
        formRegistrarLibroInstancia = Form_RegistroLibroInstancia()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarLibroInstancia.fields['fechaCreacionLibroInstancia'].initial = formatedDate
        contexto = {
            'formRegistrarLibroInstancia' : formRegistrarLibroInstancia
        }
    else:
        formRegistrarLibroInstancia = Form_RegistroLibroInstancia(request.POST)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarLibroInstancia.fields['fechaCreacionLibroInstancia'].initial = formatedDate
        contexto = {
            'formRegistrarLibroInstancia' : formRegistrarLibroInstancia
        }
        if formRegistrarLibroInstancia.is_valid():
            formRegistrarLibroInstancia.save()
            return redirect('gestionLibroInstancia')

    return render(request, "GestionPrestamo/registroLibroInstancia.html", contexto)
@login_required
def modificarLibroInstancia(request, idLibroInstancia):
    libroInstancia = LibroInstancia.objects.get(idLibroInstancia= idLibroInstancia)
    if request.method == 'GET':
        formRegistrarLibroInstancia = Form_RegistroLibroInstancia(instance=libroInstancia)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarLibroInstancia.fields['fechaCreacionLibroInstancia'].initial = formatedDate
        contexto = {
            'formRegistrarLibroInstancia' : formRegistrarLibroInstancia
        }
    else:
        formRegistrarLibroInstancia = Form_RegistroLibroInstancia(request.POST, instance= libroInstancia)
        contexto = {
            'formRegistrarLibroInstancia' : formRegistrarLibroInstancia
        }
        if formRegistrarLibroInstancia.is_valid():
            formRegistrarLibroInstancia.save()
            return redirect('gestionLibroInstancia')
    return render(request, "GestionPrestamo/registroLibroInstancia.html", contexto)
@login_required
def eliminarLibroInstancia(request, idLibroInstancia):
    obj = LibroInstancia.objects.get(idLibroInstancia= idLibroInstancia)
    obj.delete()
    return redirect('gestionLibroInstancia')



@login_required
def registrarTipoUsuario(request):
    if request.method == 'GET':
        formRegistrarTipoUsuario = Form_RegistroTipoUsuario()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarTipoUsuario.fields['fechaCreacionTipoUsuario'].initial = formatedDate
        contexto = {
            'formRegistrarTipoUsuario' : formRegistrarTipoUsuario
        }
    else:
        formRegistrarTipoUsuario = Form_RegistroTipoUsuario(request.POST)
        contexto = {
            'formRegistrarTipoUsuario' : formRegistrarTipoUsuario
        }
        print(request.POST)
        if formRegistrarTipoUsuario.is_valid():
            formRegistrarTipoUsuario.save()
            return redirect('gestionTipoUsuario')

    return render(request, "GestionPrestamo/registroTipoUsuario.html", contexto)
@login_required
def modificarTipoUsuario(request, idTipoUsuario):
    tipoUsuario = TipoUsuario.objects.get(idTipoUsuario= idTipoUsuario)


    if request.method == 'GET':
        formRegistrarTipoUsuario = Form_RegistroTipoUsuario(instance=tipoUsuario)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarTipoUsuario.fields['fechaCreacionTipoUsuario'].initial = formatedDate
        contexto = {
            'formRegistrarTipoUsuario' : formRegistrarTipoUsuario
        }
    else:
        formRegistrarTipoUsuario = Form_RegistroTipoUsuario(request.POST, instance= tipoUsuario)
        contexto = {
            'formRegistrarTipoUsuario' : formRegistrarTipoUsuario
        }
        if formRegistrarTipoUsuario.is_valid():
            formRegistrarTipoUsuario.save()
            return redirect('gestionTipoUsuario')
    return render(request, "GestionPrestamo/registroTipoUsuario.html", contexto)
@login_required
def eliminarTipoUsuario(request, idTipoUsuario):
    obj = TipoUsuario.objects.get(idTipoUsuario= idTipoUsuario)
    obj.delete()
    return redirect('gestionTipoUsuario')


@login_required
def registrarGeneroLibro(request):
    if request.method == 'GET':
        formRegistrarGeneroLibro = Form_RegistroGeneroLibro()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarGeneroLibro.fields['fechaCreacionGeneroLibro'].initial = formatedDate
        contexto = {
            'formRegistrarGeneroLibro' : formRegistrarGeneroLibro
        }
    else:
        formRegistrarGeneroLibro = Form_RegistroGeneroLibro(request.POST)
        contexto = {
            'formRegistrarGeneroLibro' : formRegistrarGeneroLibro
        }
        print(request.POST)
        if formRegistrarGeneroLibro.is_valid():
            formRegistrarGeneroLibro.save()
            return redirect('gestionGeneroLibro')

    return render(request, "GestionPrestamo/registroGeneroLibro.html", contexto)
@login_required
def modificarGeneroLibro(request, idGeneroLibro):
    generoLibro = GeneroLibro.objects.get(idGeneroLibro= idGeneroLibro)
    if request.method == 'GET':
        formRegistrarGeneroLibro = Form_RegistroGeneroLibro(instance=generoLibro)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarGeneroLibro.fields['fechaCreacionGeneroLibro'].initial = formatedDate
        contexto = {
            'formRegistrarGeneroLibro' : formRegistrarGeneroLibro
        }
    else:
        formRegistrarGeneroLibro = Form_RegistroGeneroLibro(request.POST, instance= generoLibro)
        contexto = {
            'formRegistrarGeneroLibro' : formRegistrarGeneroLibro
        }
        if formRegistrarGeneroLibro.is_valid():
            formRegistrarGeneroLibro.save()
            return redirect('gestionGeneroLibro')
    return render(request, "GestionPrestamo/registroGeneroLibro.html", contexto)
@login_required
def eliminarGeneroLibro(request, idGeneroLibro):
    obj = TipoUsuario.objects.get(idGeneroLibro= idGeneroLibro)
    obj.delete()
    return redirect('gestionGeneroLibro')
@login_required
def registrarAutorLibro(request):
    if request.method == 'GET':
        formRegistrarAutorLibro = Form_RegistroAutorLibro()
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarAutorLibro.fields['fechaCreacionAutorLibro'].initial = formatedDate
        contexto = {
            'formRegistrarAutorLibro' : formRegistrarAutorLibro
        }
    else:
        formRegistrarAutorLibro = Form_RegistroAutorLibro(request.POST)
        contexto = {
            'formRegistrarAutorLibro' : formRegistrarAutorLibro
        }
        print(request.POST)
        if formRegistrarAutorLibro.is_valid():
            formRegistrarAutorLibro.save()
            return redirect('gestionAutorLibro')

    return render(request, "GestionPrestamo/registroAutorLibro.html", contexto)
@login_required
def modificarAutorLibro(request, idAutorLibro):
    autorLibro = AutorLibro.objects.get(idAutorLibro= idAutorLibro)
    if request.method == 'GET':
        formRegistrarAutorLibro = Form_RegistroAutorLibro(instance=autorLibro)
        myDate = datetime.now()
        formatedDate = myDate.strftime("%Y-%m-%d %H:%M:%S")
        formRegistrarAutorLibro.fields['fechaCreacionAutorLibro'].initial = formatedDate
        contexto = {
            'formRegistrarAutorLibro' : formRegistrarAutorLibro
        }
    else:
        formRegistrarAutorLibro = Form_RegistroAutorLibro(request.POST, instance= autorLibro)
        contexto = {
            'formRegistrarAutorLibro' : formRegistrarAutorLibro
        }
        if formRegistrarAutorLibro.is_valid():
            formRegistrarAutorLibro.save()
            return redirect('gestionAutorLibro')
    return render(request, "GestionPrestamo/registroAutorLibro.html", contexto)
@login_required
def eliminarAutorLibro(request, idAutorLibro):
    obj = AutorLibro.objects.get(idAutorLibro= idAutorLibro)
    obj.delete()
    return redirect('gestionAutorLibro')
@login_required
def registrarPais(request):
    if request.method == 'GET':
        formRegistrarPais = Form_RegistroPais()
        contexto = {
            'formRegistrarPais' : formRegistrarPais
        }
    else:
        formRegistrarPais = Form_RegistroPais(request.POST)
        contexto = {
            'formRegistrarPais' : formRegistrarPais
        }
        print(request.POST)
        if formRegistrarPais.is_valid():
            formRegistrarPais.save()
            return redirect('gestionPais')

    return render(request, "GestionPrestamo/registroPais.html", contexto)
@login_required
def modificarPais(request, idPais):
    pais = Pais.objects.get(idPais= idPais)
    if request.method == 'GET':
        formRegistrarPais = Form_RegistroPais(instance=pais)
        contexto = {
            'formRegistrarPais' : formRegistrarPais
        }
    else:
        formRegistrarPais = Form_RegistroPais(request.POST, instance= pais)
        contexto = {
            'formRegistrarPais' : formRegistrarPais
        }
        if formRegistrarPais.is_valid():
            formRegistrarPais.save()
            return redirect('gestionPais')
    return render(request, "GestionPrestamo/registroPais.html", contexto)
@login_required
def eliminarPais(request, idPais):
    obj = Pais.objects.get(idPais= idPais)
    obj.delete()
    return redirect('gestionPais')
