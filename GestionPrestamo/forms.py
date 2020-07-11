from django import forms
from django.forms import DateTimeField
from GestionPrestamo.models import Libro, Lector, Bibliotecario, EtiquetaLibro, AutorLibro, Idioma, Reservacion, LibroInstancia, TipoUsuario, GeneroLibro, Editorial, Pais, Usuario
from django.utils.timezone import now
from django.conf import settings
#from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User



class Form_DateInput(forms.DateTimeInput):
    input_type = 'date'


class Form_RegistroLibro(forms.ModelForm):
    class Meta:
        model = Libro
        fields = '__all__'
        labels ={
            'codigoLibro':'Codigo de Biblioteca',
            'tituloLibro':'Titulo',
            'etiquetaLibro_Libro':'Etiquetas',
            'genero_Libro':'Género',
            'formatoLibro':'Formato del libro',
            'paisLibro':'Pais de Publicación',
            'autorLibro_Libro':'Autor(es)',
            'editorial_Libro':'Editorial',
            'bibliotecario_Libro':'Bibliotecario',
            'idiomaLibro':'Idioma de Publicación',
            'resumenLibro':'Resumen',
            'ISBNLibro':'ISBN',
            'anioPublicacionLibro':'Año de publicación',
            'fechaCreacionLibro':'Fecha de Creación',
            'estadoLibro':'Activo',
        }
        widgets = {
            'codigoLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el codigo del libro'}),
            'tituloLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre del libro'}),
            'resumenLibro':forms.Textarea(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el resumen del libro'}),
            'ISBNLibro':forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el codigo ISBN'}),
            'anioPublicacionLibro':forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el año de publicación'}),
            'etiquetaLibro_Libro':forms.SelectMultiple(attrs={'id':'etiquetaLibro_Libro'}),
            'genero_Libro':forms.SelectMultiple(attrs={'id':'genero_Libro'}),
            #'genero_Libro': forms.SelectMultiple(),
        }
    CANTIDAD_OPCIONES =(
        ('1','1'),
        ('2','2'),
        ('3','3'),
        ('4','4'),
        ('5','5'),
        ('6','6'),
        ('7','7'),
        ('8','8'),
        ('9','9'),
        ('10','10'),
    )
    codigoLibro = forms.CharField(max_length=20, initial = "BM00000")
    fechaCreacionLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    pais_Libro =  forms.ModelChoiceField(queryset=Pais.objects.all())
    genero_Libro = forms.ModelMultipleChoiceField(queryset=GeneroLibro.objects.all())
    autorLibro_Libro = forms.ModelMultipleChoiceField(
        queryset=AutorLibro.objects.all(),
        #widget=forms.CheckboxSelectMultiple(),
        required=True,
       )
    etiquetaLibro_Libro = forms.ModelMultipleChoiceField(queryset=EtiquetaLibro.objects.all())
    def devolver_objeto(self):
         return Libro
    """def save(self, commit=True):
        #etiqueta = self.cleaned_data.get('etiquetaLibro_libro')
        instance = forms.ModelForm.save(self, False)
        instance.etiquetaLibro_Libro.clear()
        print("Esta son las Etiquetas Seleccionadas")
        for etiqueta in self.cleaned_data['etiquetaLibro_Libro']:
            print(etiqueta)
            instance.etiquetaLibro_Libro.add(etiqueta)
        instance.save()"""
    def __init__(self, *args, **kwargs):
        if kwargs.get('instance'):
            initial = kwargs.setdefault('initial', {})
            initial['etiquetaLibro_Libro'] = [t.pk for t in
                kwargs['instance'].etiquetaLibro_Libro.all()]

        forms.ModelForm.__init__(self, *args, **kwargs)
    def save(self, commit=True):
        instance = forms.ModelForm.save(self, False)
        old_save_m2m = self.save_m2m

        def save_m2m():
            old_save_m2m()
            # This is where we actually link the pizza with toppings
            instance.etiquetaLibro_Libro.clear()
            print("Esta son las Etiquetas Seleccionadas")
            for obj in self.cleaned_data['etiquetaLibro_Libro']:
                instance.etiquetaLibro_Libro.add(obj)
                print(obj)
            instance.genero_Libro.clear()
            for obj in self.cleaned_data['genero_Libro']:
                instance.genero_Libro.add(obj)
                print(obj)
            instance.autorLibro_Libro.clear()
            for obj in self.cleaned_data['autorLibro_Libro']:
                instance.autorLibro_Libro.add(obj)
                print(obj)
        self.save_m2m = save_m2m
        instance.save()
        self.save_m2m()
        return instance
    """fechaCreacionLibro = forms.DateField(
    widget=forms.DateInput(format='%m/%d/%Y'),
    input_formats=('%m/%d/%Y', )
    )"""

class Form_RegistroLibroInstancia(forms.ModelForm):
    fechaCreacionLibroInstancia = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoLibroInstancia = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = LibroInstancia
        fields = '__all__'
        labels ={
            'idLibroInstancia':'Identificador de la instancia del libro',
            'estadoPrestamoLibroInstancia':'Estado',
            'libro_LibroInstancia':'Nombre del Libro',
            'fechaCreacionLibroInstancia':'Fecha de Creación',
            'estadoLibroInstancia':'Es Activo',
        }
        exclude = ('fechaCreacionLibroInstancia','estadoLibroInstancia')

class Form_RegistroLector(forms.ModelForm):
    class Meta:
        model = Lector
        fields = '__all__'
        labels ={
            'idLector':'Identificador de la instancia del Lector',
            'nombreLector':'Nombre',
            'apellidosLector':'Apellidos',
            'DNILector':'Documento de Identidad',
            'emailLector':'Email',
            'sexoLector':'Sexo',
            'tipoUsuario_Lector':'Tipo de Usuario',
            'usernameLector':'Usuario',
            'claveLector':'Clave',
            'fechaNacimientoLector':'Fecha de Nacimiento',
            'fechaCreacionLector':'Fecha de creación',
            'estadoLector':'Es Activo',
        }
        widgets = {
            'fechaNacimientoLector': forms.DateInput(attrs={'class': 'date-input'})}
        #ordering = ['-fecha']
    fechaCreacionLector = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    fechaNacimientoLector = forms.DateField(label='Fecha de Nacimiento',widget=Form_DateInput(format='%Y-%m-%d'))
    estadoLector = forms.BooleanField(widget=forms.HiddenInput(), initial=True)

class Form_RegistroBibliotecario(forms.ModelForm):
    fechaCreacionBibliotecario = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoBibliotecario = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    fechaNacimientoBibliotecario = forms.DateField(label='Fecha de Nacimiento',widget=Form_DateInput(format='%Y-%m-%d'))
    class Meta:
        model = Bibliotecario
        labels ={
            'idBibliotecario':'Identificador del Bibliotecario',
            'nombreBibliotecario':'Nombre',
            'apellidosBibliotecario':'Apellidos',
            'DNIBibliotecario':'Documento de Identidad',
            'emailBibliotecario':'Email',
            'sexoBibliotecario':'Sexo',
            'tipoBibliotecario_Bibliotecario':'Tipo de Usuario',
            'direccionBibliotecario':'Dirección',
            'telefonoBibliotecario':'Telefono',
            'usernameBibliotecario':'Usuario',
            'claveBibliotecario':'Clave',
            'fechaNacimientoBibliotecario':'Fecha de Nacimiento',
            'fechaCreacionBibliotecario':'Fecha de creación',
            'estadoBibliotecario':'Es Activo',
        }
        widgets = {
            'nombreBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre del Bibliotecario'}),
            'apellidosBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese los apellidos del Bibliotecario'}),
            'DNIBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese un DNI del Bibliotecario'}),
            'emailBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese una dirección de correo del Bibliotecario'}),
            'direccionBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese la dirección del Bibliotecario'}),
            'telefonoBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el teléfono del Bibliotecario'}),
            'usernameBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre de usuario'}),
            'claveBibliotecario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese una clave de usuario'}),
                                                }
        fields = '__all__'

class Form_RegistroEtiquetaLibro(forms.ModelForm):
    fechaCreacionEtiquetaLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    class Meta:
        model = EtiquetaLibro
        fields = '__all__'
        labels ={
            'idEtiqueta':'Identificador de la Etiqueta',
            'nombreBibliotecario':'Nombre',
            'fechaCreacionBibliotecario':'Fecha de creación',
            'estadoBibliotecario':'Es Activo',
        }
        widgets = {
            'nombreEtiqueta': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre de la Etiqueta'}),
                                                }
        exclude = ('fechaCreacionEtiquetaLibro','estadoEtiquetaLibro')


class Form_RegistroAutorLibro(forms.ModelForm):
    fechaCreacionAutorLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoAutorLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = AutorLibro
        fields = '__all__'
        labels ={
            'idAutorLibro':'Identificador del Autor',
            'nombreAutorLibro':'Nombre',
            'apellidosAutorLibro':'Apellidos',
            'descripcionLibro':'Descripción',
            'fechaCreacionAutorLibro':'Fecha de creación',
            'estadoAutorLibro':'Es Activo',
        }
        widgets = {
            'nombreAutorLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre del autor'}),
            'apellidosAutorLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el apellido del autor'}),
            'descripcionAutorLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese una descripcion del autor'}),
            'descripcionAutorLibro': forms.Textarea(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese una descripcion del autor'}),
                                                }
        exclude = ('fechaCreacionAutorLibro','estadoAutorLibro')


class Form_RegistroEditorial(forms.ModelForm):
    class Meta:
        model = Editorial
        fields = '__all__'
        exclude = ('fechaCreacionEditorial','estadoEditorial')
        labels ={
            'idAutorEditorial':'Identificador del Editorial',
            'tituloAutorEditorial':'Nombre',
            'descripcionEditorial':'Descripción',
            'fechaCreacionEditorial':'Fecha de creación',
            'estadoAutorEditorial':'Es Activo',
        }
        widgets = {
            'tituloEditorial': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el titulo de la Editorial'}),
            'descripcionEditorial': forms.Textarea(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese la descripción de la Editorial'}),
                }
    fechaCreacionEditorial = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoEditorial = forms.BooleanField(widget=forms.HiddenInput(), initial=True)


class Form_RegistroIdioma(forms.ModelForm):
    class Meta:
        model = Idioma
        fields = '__all__'
        labels ={
            'idAutorEditorial':'Identificador del Editorial',
            'tituloAutorEditorial':'Nombre',
            'descripcionEditorial':'Descripción',
            'fechaCreacionEditorial':'Fecha de creación',
            'estadoAutorEditorial':'Es Activo',
        }
        widgets = {
            'tituloIdioma': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el titulo del idioma'}),
                                }
    fechaCreacionIdioma = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoIdioma = forms.BooleanField(widget=forms.HiddenInput(), initial=True)

class Form_RegistroReservacion(forms.ModelForm):
    fechaEmisionReservacion =  forms.DateField(label='Fecha de emision',widget=Form_DateInput(format='%Y-%m-%d'))
    fechaRetornoReservacion = forms.DateField(label='Fecha de retorno',widget=Form_DateInput(format='%Y-%m-%d'))
    estadoReservacion = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = Reservacion
        fields = '__all__'
        labels ={
            'idReservacion':'Identificador del Reservacion',
            'libro_Reservacion':'Nombre del libro',
            'usuario_reservacion':'Usuario',
            'tipoAdquisicionReservacion':'Tipo de Adquisición',
            'bibliotecario_Reservacion':'Bibliotecario',
            'fechaEmisionReservacion':'Fecha de Emisión',
            'fechaRetornoReservacion':'Fecha de Retorno',
            'estadoReservacion':'Es Activo',
        }


class Form_RegistroTipoUsuario(forms.ModelForm):
    #fechaCreacionTipoUsuario = forms.DateTimeField(widget=Form_DateInput)
    #fechaCreacionTipoUsuario = DateTimeField(input_formats=["%Y-%m-%d %H:%M:%S"])
    #fechaCreacionTipoUsuario = forms.DateField(input_formats=settings.DATE_INPUT_FORMATS)
    fechaCreacionTipoUsuario = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoTipoUsuario = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = TipoUsuario
        fields = '__all__'
        exclude = ('fechaCreacionTipoUsuario','estadoTipoUsuario')
        labels ={
            'idTipoUsuario':'Identificador del Reservacion',
            'nombreTipoUsuario':'Nombre',
            'fechaCreacionTipoUsuario':'Descripción',
            'estadoTipoUsuario':'Es Activo',
        }
        widgets = {
            'nombreTipoUsuario': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el titulo del Tipo de usuario'}),
                                }

class Form_RegistroGeneroLibro(forms.ModelForm):
    fechaCreacionGeneroLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoGeneroLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = GeneroLibro
        fields = '__all__'
        exclude = ('fechaCreacionGeneroLibro','estadoGeneroLibro')
        widgets = {
            'nombreGeneroLibro': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el género del libro'}),
                                }


class Form_RegistroPais(forms.ModelForm):
    estadoPais = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    tituloPais = forms.CharField(label='Nombre del Pais')
    class Meta:
        model = Pais
        fields = '__all__'
        exclude = ('fechaCreacionPais','estadoPais')
        widgets = {
            'tituloPais': forms.TextInput(attrs={'class': 'form-control',
                                                'placeholder':'Ingrese el nombre del país'}),
                                }

class Form_RegistroUsuario(forms.ModelForm):
    fechaCreacionUsuario = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    #password = forms.CharField(widget=forms.HiddenInput())
    fechaNacimientoUsuario = forms.DateField(label='Fecha de Nacimiento',widget=Form_DateInput(format='%Y-%m-%d'))
    estadoUsuario = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    password1 = forms.CharField(label='Clave',widget=forms.PasswordInput(
        attrs = {
            'class':'form-control',
            'placeholder':'Ingrese su contraseña...',
            'id': 'password1',
            'required': 'required',
        }))
    password2 = forms.CharField(label='Clave de confirmación',widget=forms.PasswordInput(
        attrs = {
            'class':'form-control',
            'placeholder':'Ingrese nuevamente su contraseña...',
            'id': 'password2',
            'required': 'required',
        }))
    class Meta:
        model = Usuario
        fields = ('email', 'username','nombreUsuario','apellidosUsuario', 'DNIUsuario','fechaNacimientoUsuario')
        widgets = {
            'fechaNacimientoUsuario': forms.DateInput(attrs={'class': 'date-input'}),
            'email': forms.EmailInput(
                attrs = {
                    'class':'form-control',
                    'placeholder':'Ingrese su email',
                }
            ),
            'nombre': forms.TextInput(
                attrs = {
                    'class':'form-control',
                    'placeholder':'Ingrese su nombre',
                }),
            'apellidos': forms.TextInput(
                attrs = {
                    'class':'form-control',
                    'placeholder':'Ingrese sus apellidos',
                }),
            'direccion': forms.TextInput(
                attrs = {
                    'class':'form-control',
                    'placeholder':'Ingrese su direccion',
                })
        #ordering = ['-fecha']
            }
        def clean_password2(self):
            password1 = self.cleaned_data.get('password1')
            password2 = self.cleaned_data.get('password2')
            if password1 == password2:
                raise forms.ValidationError('Contraseñas no coinciden')
            return password2
        def save(self,commit=True):
            user = super().save(commit = false)
            user.set_password(self.cleaned_data['password1'])
            if commit:
                user.save()
            return user

#class CustomUserForm(UserCreationForm):

    #class Meta:
        #model = User
        #fields = ['first_name','last_name','email','username','password1','password2']
