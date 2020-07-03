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
        widgets = {
            'codigoLibro': forms.TextInput(attrs={'class': 'form-control'}),
        }
        #fields = {'codigoLibro','tituloLibro', 'idEtiqueta_Libro', 'idFormatoLibro_Libro', 'idFormatoLibro_Libro',}
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
    codigoLibro = forms.CharField(max_length=20,label='Codigo de Biblioteca', initial = "BM00000")
    #cantidad = forms.ChoiceField(choices=CANTIDAD_OPCIONES, label='Cantidad: ' )
    fechaCreacionLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    paisLibro =  forms.ModelChoiceField(label='Pais de Publicación',queryset=Pais.objects.all())
    def devolver_objeto(self):
         return Libro
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
        exclude = ('fechaCreacionLibroInstancia','estadoLibroInstancia')

class Form_RegistroLector(forms.ModelForm):
    class Meta:
        model = Lector
        fields = '__all__'
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
        fields = '__all__'

class Form_RegistroEtiquetaLibro(forms.ModelForm):
    fechaCreacionEtiquetaLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    class Meta:
        model = EtiquetaLibro
        fields = '__all__'
        exclude = ('fechaCreacionEtiquetaLibro','estadoEtiquetaLibro')


class Form_RegistroAutorLibro(forms.ModelForm):
    fechaCreacionAutorLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoAutorLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = AutorLibro
        fields = '__all__'
        exclude = ('fechaCreacionAutorLibro','estadoAutorLibro')


class Form_RegistroEditorial(forms.ModelForm):
    class Meta:
        model = Editorial
        fields = '__all__'
        exclude = ('fechaCreacionEditorial','estadoEditorial')
    fechaCreacionEditorial = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoEditorial = forms.BooleanField(widget=forms.HiddenInput(), initial=True)


class Form_RegistroIdioma(forms.ModelForm):
    class Meta:
        model = Idioma
        fields = '__all__'
    fechaCreacionIdioma = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])

class Form_RegistroReservacion(forms.ModelForm):
    fechaEmisionReservacion =  forms.DateField(label='Fecha de emision',widget=Form_DateInput(format='%Y-%m-%d'))
    fechaRetornoReservacion = forms.DateField(label='Fecha de retorno',widget=Form_DateInput(format='%Y-%m-%d'))
    estadoReservacion = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = Reservacion
        fields = '__all__'





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

class Form_RegistroGeneroLibro(forms.ModelForm):
    fechaCreacionGeneroLibro = DateTimeField(widget=forms.HiddenInput(),input_formats=["%Y-%m-%d %H:%M:%S"])
    estadoGeneroLibro = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    class Meta:
        model = GeneroLibro
        fields = '__all__'
        exclude = ('fechaCreacionGeneroLibro','estadoGeneroLibro')


class Form_RegistroPais(forms.ModelForm):
    estadoPais = forms.BooleanField(widget=forms.HiddenInput(), initial=True)
    tituloPais = forms.CharField(label='Nombre del Pais')
    class Meta:
        model = Pais
        fields = '__all__'
        exclude = ('fechaCreacionPais','estadoPais')

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
                    'placeholder':'Ingrese su nombre',
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
