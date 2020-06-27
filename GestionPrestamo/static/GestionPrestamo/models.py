from django.db import models
from django.urls import reverse #Used to generate URLs by reversing the URL patterns
import uuid # Requerida para las instancias de libros únicos
# Create your models here.


class Idioma(models.Model):
    """Modelo que representa un idioma (por ejemplo, inglés, francés, japonés, etc.)"""
    idIdioma = models.AutoField(primary_key=True, help_text="ID único para esta Idioma")
    tituloIdioma = models.CharField(max_length=200, verbose_name='Título',
                            help_text="Ingrese el idioma natural del libro (por ejemplo, inglés, francés, japonés, etc.)")
    estadoIdioma = models.BooleanField(verbose_name='Activo', default=True)
    class Meta:
        ordering = ["tituloIdioma"]

    
    def __str__(self):
        """Cadena para representar el objeto Modelo (en el sitio de administración, etc.)"""
        return self.tituloIdioma

class GeneroLibro(models.Model):
    idGeneroLibro = models.AutoField(primary_key=True, help_text="ID único para esta Género")
    tituloGeneroLibro = models.CharField(max_length=200, verbose_name='Título')
    fechaCreacionGeneroLibro = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creación')
    estadoGeneroLibro = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["tituloGeneroLibro"]

class TipoUsuario(models.Model):
    idTipoUsuario = models.AutoField(primary_key=True, help_text="ID único para esta Tipo de Usuario")
    nombreTipoUsuario = models.CharField(max_length=100, verbose_name='Nombre')
    fechaCreacionTipoUsuario = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creacion')
    estadoTipoUsuario = models.BooleanField(verbose_name='Activo', default=True)


class Bibliotecario(models.Model):
    idBibliotecario = models.AutoField(primary_key=True, help_text="ID único para esta usuario bibliotecario")
    nombreBibliotecario = models.CharField(max_length=100,verbose_name='Nombre',help_text="Ingrese sus nombres")
    apellidosBibliotecario = models.CharField(max_length=100,verbose_name='Apellido',help_text="Ingrese  sus apellidos")
    direccionBibliotecario = models.CharField(max_length=250,verbose_name='Direccion',help_text="Incluya Distrito , Provincia y Pais si fuere necesario")
    DNIBibliotecario = models.CharField(max_length=20,verbose_name='Documento de Identidad',help_text="8 digitos, incluya el cero adelante si fuese necesario. Especifique cuando no sea DNI")
    telefonoBibliotecario = models.CharField(max_length=20, verbose_name='Telefono (Fijo o Movil)', help_text="Ingresar un numero de celular con su codigo de pais y si es telefono con su codigo respectivo sin guiones o paréntesis")
    emailBibliotecario = models.EmailField(max_length=50, verbose_name='Email', help_text="ejemplo@example.com")
    TIPO_SEXO = (
        ('m', 'Masculino'),
        ('f', 'Femenino'),
    )
    sexoBibliotecario = models.CharField(verbose_name='Sexo', max_length=1 , choices=TIPO_SEXO, blank=True, default='m', help_text='Sexo del usuario del bibliotecario')
    tipoBibliotecario_Bibliotecario = models.ForeignKey(TipoUsuario,on_delete=models.SET_NULL, null=True)
    usernameBibliotecario = models.CharField(max_length=50, verbose_name='Nombre de usuario', help_text="Evite colocar su mismo nombre")
    claveBibliotecario = models.CharField(max_length=50, verbose_name='Clave de usuario', help_text="Incluya numeros y letras no menor a 6 caracteres")
    fechaNacimientoBibliotecario = models.DateField(verbose_name='Fecha de Nacimiento')
    fechaCreacionBibliotecario = models.DateTimeField(verbose_name='Fecha de Creacion', auto_now_add=True, help_text="Fecha de creacion del usuario" )
    estadoBibliotecario = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["nombreBibliotecario"]

    def __str__(self):
        return 'El nombre es %s, su apellido %s y su usuario es %s: '%(self.nombreBibliotecario, self.apellidosBibliotecario, self.usernameBibliotecario)


  
class EtiquetaLibro(models.Model):
    idEtiquetaLibro = models.AutoField(primary_key=True, help_text="ID único para esta Tag o etiqueta")
    tituloEtiquetaLibro = models.CharField(max_length=100, verbose_name='Nombre de la nueva etiqueta')
    fechaCreacionEtiquetaLibro = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creacion')
    estadoEtiquetaLibro = models.BooleanField(verbose_name='Activo', default=True)

class Publicacion(models.Model):
    idPublicacion = models.AutoField(primary_key=True, help_text="ID único para esta publicación")
    tituloPublicacion = models.CharField(max_length=200, verbose_name='Título')
    edicionPublicacion = models.CharField(max_length=20, verbose_name='Edición')
    descripcionPublicacion = models.TextField(max_length=1000, verbose_name='Descripcion Breve')
    fechaCreacionPublicacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creación')
    estadoPublicacion = models.BooleanField(verbose_name='Activo', default=True)

class Lector(models.Model):
    idLector = models.AutoField(primary_key=True, help_text="ID único para este Lector")
    nombreLector = models.CharField(max_length=100, verbose_name='Nombre')
    apellidosLector = models.CharField(max_length=100, verbose_name='Apellidos')
    DNILector = models.CharField(max_length=20, verbose_name='Documento de Identidad', help_text="8 digitos, incluya el cero adelante si fuese necesario. Especifique cuando no sea DNI" )
    emailLector = models.EmailField(max_length=50, verbose_name='Email')
    TIPO_SEXO = (
        ('m', 'Masculino'),
        ('f', 'Femenino'),
    )
    sexoLector = models.CharField(verbose_name='Sexo', max_length=1 , choices=TIPO_SEXO, blank=True, default='m', help_text='Sexo del usuario del Lector')
    tipoUsuario_Lector = models.ForeignKey(TipoUsuario, on_delete=models.SET_NULL, null=True)
    usernameLector = models.CharField(max_length=50, verbose_name='Nombre de Usuario', help_text="Evite colocar su mismo nombre")
    claveLector = models.CharField(max_length=50, verbose_name='Clave de Usuario', help_text="Incluya numeros y letras no menor a 6 caracteres")
    fechaNacimientoLector = models.DateField(verbose_name='Fecha de Nacimiento', help_text="Formato yyyy-mm-d")
    fechaCreacionLector = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creación')
    estadoLector = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["fechaCreacionLector"]

    def __str__(self):
        return self.nombreLector


class AutorLibro(models.Model):
    idAutorLibro = models.AutoField(primary_key=True, help_text="ID único para este Autor")
    nombreAutorLibro = models.CharField(max_length=100, verbose_name='Nombre')
    apellidoAutorLibro = models.CharField(max_length=100, verbose_name='Apellidos')
    descripcionAutorLibro = models.TextField(max_length=1000, verbose_name='Descripcion Breve')
    fechaCreacionAutorLibro = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creación')
    estadoAutorLibro = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["nombreAutorLibro"]
      

class Libro(models.Model):
    idLibro  = models.AutoField(primary_key=True, help_text="ID único para este libro")
    codigoLibro = models.CharField(max_length=20,verbose_name='Codigo de Biblioteca' , blank=True)
    tituloLibro = models.CharField(max_length=200,verbose_name='Titulo', help_text="Ingrese el nombre del género (p. ej. Ciencia Ficción, Poesía Francesa etc.)")
    etiquetaLibro_Libro = models.ManyToManyField(EtiquetaLibro, verbose_name="Tags", help_text="Seleccione los tags para este libro")
    generoLibro = models.ManyToManyField(GeneroLibro, verbose_name="Género", help_text="Seleccione un genero para este libro")
    FORMATO_LIBRO=(
        ('e', 'E-book'),
        ('i', 'Impreso'),
        ('a', 'E-book e Impreso'),
    )
    formatoLibro_Libro = models.CharField(verbose_name='Formato de Disponibilidad', max_length=1, choices=FORMATO_LIBRO, blank=True, default='e', help_text='Formato de disponibilidad del libro')
    autorLibro_Libro = models.ManyToManyField(AutorLibro, verbose_name='Autor', help_text="Seleccione un autor para este libro")
    publicacion_Libro = models.ForeignKey(Publicacion, on_delete=models.SET_NULL, null=True)
    bibliotecario_Libro = models.ManyToManyField(Bibliotecario, verbose_name='Bibliotecario', help_text="El Responsable de Crear o modificar este libro")
    idiomaLibro = models.ForeignKey(Idioma, on_delete=models.SET_NULL, null=True)
    resumenLibro = models.TextField(max_length=10000,verbose_name='Resumen', help_text="Ingrese una breve descripción del libro")
    ISBNLibro = models.CharField(max_length=13, verbose_name='ISBN',help_text='13 Caracteres <a href="https://www.isbn-international.org/content/what-isbn">ISBN number</a>')
    anioPublicacionLibro = models.IntegerField(verbose_name='Año de Publicación')
    fechaCreacionLibro = models.DateTimeField(verbose_name='Fecha de Creación', auto_now_add=True)
    estadoLibro = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["fechaCreacionLibro"]
        
    def __str__(self):
        return self.tituloLibro

    def get_absolute_url(self):
        """
        Devuelve el URL a una instancia particular de Book
        """
        return reverse('Detalle-Libro', args=[str(self.idLibro)])



class LibroInstancia(models.Model):
    idLibroInstancia = models.UUIDField(primary_key=True, default=uuid.uuid4, help_text="ID único para este libro particular en toda la biblioteca")
    fechaRetornoLibroInstancia = models.DateTimeField(null=True, blank=True, verbose_name='Fecha de devolución')
    #estadoPrestamo = models.CharField(max_length=20)
    ESTADO_PRESTAMO = (
        ('m', 'mantenimiento'),
        ('o', 'En calidad de préstamo'),
        ('a', 'Disponible'),
        ('r', 'Reservado'),
    )
    estadoPrestamo = models.CharField(max_length=1, verbose_name='Estado de Préstamo',choices=ESTADO_PRESTAMO, blank=True, default='m', help_text='Disponibilidad del libro')
    Libro_LibroInstancia = models.ManyToManyField(Libro, verbose_name='Instancia del Libro')
    fechaCreacionLibroInstancia = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de Creación')
    estadoLibroInstancia = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["fechaRetornoLibroInstancia"]
        
    def __str__(self):
        """
        String para representar el Objeto del Modelo
        """
        return '%s (%s)' % (self.idLibroInstancia,self.Libro_LibroInstancia)

class Reservacion(models.Model):
    idReservacion = models.AutoField(primary_key=True, help_text="ID único para esta publicación")
    libro_Reservacion = models.ForeignKey(LibroInstancia, on_delete=models.SET_NULL, null=True)
    lector_Reservacion = models.ForeignKey(Lector, on_delete=models.SET_NULL, null=True)
    TIPO_ADQUISICION = (
        ('i', 'interno'),
        ('e', 'externo'),
        ('a', 'Interbibliotecario'),
    )
    tipoAdquisicionReservacion = models.CharField(max_length=1, choices=TIPO_ADQUISICION , verbose_name='Adquisición', help_text="Seleccione el tipo de Adquisicion que se realizará")
    idBibliotecario_Reservacion = models.ManyToManyField(Bibliotecario, verbose_name='Bibliotecario', help_text="El Responsable de reservar el libro")
    fechaEmisionReservacion = models.DateTimeField(auto_now_add=True, verbose_name='Fecha de emision de la reservación')
    fechaRetornoReservacion = models.DateTimeField(verbose_name='Fecha de retorno de la Reservacion')
    estadoReservacion = models.BooleanField(verbose_name='Activo', default=True)

    class Meta:
        ordering = ["fechaEmisionReservacion"]


