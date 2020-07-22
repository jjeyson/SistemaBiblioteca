from GestionPrestamo.models import Libro, Lector, Bibliotecario, EtiquetaLibro, Editorial, Reservacion, Idioma, LibroInstancia, TipoUsuario, GeneroLibro, AutorLibro, Pais, Usuario, Rating

#from gluon.tools import Service

list2 = []
libros_reservados = []

def traer_Recomendados(request):
    if len(get_reservados(request)) is 0:
        print('Tiene:',len(get_reservados(request)))
        return get_rating(request)
    else:
        print('Tiene:',len(get_reservados(request)))
        return get_libros1(request)


def get_reservados(request):
    query = Reservacion.objects.filter(libro_Reservacion__libro_LibroInstancia__estadoLibro=True, usuario_reservacion = request.user.id)
    query_libros = Libro.objects.filter(estadoLibro = True)
    #print(query.count())
    list = []
    for a in query_libros:
        for b in query:
            if a.idLibro == b.libro_Reservacion.libro_LibroInstancia.idLibro:
                list.append(a)
                libros_reservados.append(a)
            else:
                list2.append(a)
    return list

def get_etiquetas(request):
    list_etiquetas =[]
    for a in get_reservados(request):
        for b in  a.etiquetaLibro_Libro.all():
            if len(list_etiquetas) is 0:
                list_etiquetas.append(b)
            else:
                opc = False
                for c in list_etiquetas:
                    if b.tituloEtiquetaLibro == c.tituloEtiquetaLibro:
                        opc = True
                if not(opc):
                    list_etiquetas.append(b)
    return list_etiquetas

def get_libros1(request):
    list = get_etiquetas(request)
    libros = Libro.objects.filter(estadoLibro = True)
    libros_recomendados = []
    libros_NoRepeat = []
    cond = False
    for obj in libros:
        repeat = False
        for lib in libros_reservados:
            if lib.tituloLibro == obj.tituloLibro:
                repeat = True
        if not(repeat):
            libros_NoRepeat.append(obj)
    for obj in libros_NoRepeat:
        cond = False
        for e in obj.etiquetaLibro_Libro.all():
            if  cond == False:
                for et in list:
                    if cond == False:
                        if et.tituloEtiquetaLibro == e.tituloEtiquetaLibro:
                            cond= True
        if cond == True:
            libros_recomendados.append(obj)
    return libros_recomendados

def get_rating(request):
    ratings = Rating.objects.filter(estadoRating = True).order_by('-estrellasRating')[:5]
    libros_ratings = []
    for r in ratings:
        for obj in Libro.objects.filter(estadoLibro = True):
            if r.libro_Rating.tituloLibro == obj.tituloLibro:
                libros_ratings.append(obj)
    return libros_ratings
