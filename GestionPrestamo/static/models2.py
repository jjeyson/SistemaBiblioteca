from django.db import models

# Create your models here.

class Libro(models.Model):
    idLibro = models.IntegerField()
    codigoLibro = models.CharField(max_length=20)
    tituloLibro = models.CharField(max_length=200)
    idEtiqueta_Libro = models.IntegerField()
    idFormatoLibro_Libro = models.IntegerField()
    idAutor_Libro = models.IntegerField()
    idPublicacion_Libro = models.IntegerField()
    idBibliotecario_Libro = models.IntegerField()
    descripcionLibro = models.CharField(max_length=450)
    anioPublicacionLibro = models.IntegerField()
    nCopias = models.IntegerField()
    estadoLibro = models.BooleanField()

    def __str__(self):
        return self.tituloLibro

class FormatoLibro(models.Model):
    idFormatoLibro = models.IntegerField()
    nombreFormatoLibro = models.CharField(max_length=100)
    estadoFormatoLibro = models.BooleanField()

class Reservacion(models.Model):
    idReservacion = models.IntegerField()
    idLibro_Reservacion = models.IntegerField()
    idLector_Reservacion = models.IntegerField()
    idTipoPrestamo_Reservacion = models.IntegerField()
    idTipoAdquisicion_Reservacion = models.IntegerField()
    idBibliotecario_Reservacion = models.IntegerField()
    fechaEmisionReservacion = models.DateField()
    fechaRetornoReservacion = models.DateField()
    estadoReservacion = models.DateField()

class Bibliotecario(models.Model):
    idBibliotecario = models.IntegerField()
    nombreFormatoLibro = models.CharField(max_length=100,verbose_name='Nombre')
    apellidoBibliotecario = models.CharField(max_length=100,verbose_name='Apellido')
    direccionBibliotecario = models.CharField(max_length=250)
    DNIBibliotecario = models.CharField(max_length=20,verbose_name='Documento de Identidad')
    telefonoBibliotecario = models.CharField(max_length=20)
    emailBibliotecario = models.EmailField(max_length=50)
    sexoBibliotecario = models.BooleanField()
    usernameBibliotecario = models.CharField(max_length=50)
    claveBibliotecario = models.CharField(max_length=50)
    fechaNacimientoBibliotecario = models.DateField()
    fechaCreacionBibliotecario = models.DateField()
    estadoBibliotecario = models.BooleanField()

    def __str__(self):
        return 'El nombre es %s, su apellido %s y su usuario es %s: '%(self.nombreFormatoLibro, self.apellidoBibliotecario, self.usernameBibliotecario)

class AutorLibro(models.Model):
    idAutorLibro = models.IntegerField()
    nombreAutorLibro = models.CharField(max_length=100)
    apellidoAutorLibro = models.CharField(max_length=100)
    descripcionAutorLibro = models.CharField(max_length=200)
    estadoAutorLibro = models.BooleanField()
    
class Libro_AutorLibro(models.Model):
    idLibro_AutorLibro = models.IntegerField()
    idLibro_Libro_AutorLibro = models.IntegerField()
    idAutorLibro_Libro_AutorLibro = models.IntegerField()

class EtiquetaLibro(models.Model):
    idEtiquetaLibro = models.IntegerField()
    tituloEtiquetaLibro = models.CharField(max_length=100)
    estadoEtiquetaLibro = models.BooleanField()

class Publicacion(models.Model):
    idPublicacion = models.IntegerField()
    tituloPublicacion = models.CharField(max_length=200)
    edicionPublicacion = models.CharField(max_length=20)
    descripcionPublicacion = models.CharField(max_length=200)
    estadoPublicacion = models.BooleanField()

class TipoAdquisicion(models.Model):
    idTipoAdquisicion = models.IntegerField()
    tituloTipoAdquisicion = models.CharField(max_length=100)
    estadoTipoAdquisicion = models.BooleanField()

class Lector(models.Model):
    idLector = models.IntegerField()
    nombreLector = models.CharField(max_length=100)
    apellidosLector = models.CharField(max_length=100)
    DNILector = models.CharField(max_length=20)
    emailLector = models.EmailField(max_length=50)
    sexoLector = models.BooleanField()
    usernameLector = models.CharField(max_length=50)
    claveLector = models.CharField(max_length=50)
    fechaNacimientoLector = models.DateField()
    fechaCreacionLector = models.DateField()
    estadoLector = models.BooleanField()

    def __str__(self):
        return self.nombreLector
