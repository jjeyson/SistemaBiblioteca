from django.contrib import admin
from GestionPrestamo.models import Bibliotecario, Libro, AutorLibro,Reservacion, EtiquetaLibro, Editorial, Lector, Idioma, GeneroLibro, Pais

# Register your models here.

class BibliotecarioAdmin(admin.ModelAdmin):
    list_display=("nombreBibliotecario","usernameBibliotecario", "claveBibliotecario")
    search_fields=("nombreBibliotecario","usernameBibliotecario","fechaCreacionBibliotecario")
class LibroAdmin(admin.ModelAdmin):
    list_display=("tituloLibro","codigoLibro", "anioPublicacionLibro")
    list_filter=("tituloLibro", "codigoLibro")
    search_fields=("tituloLibro","codigoLibro","resumenLibro","autorLibro_Libro")
class LectorAdmin(admin.ModelAdmin):
    list_display=("nombreLector","usernameLector", "claveLector")
    search_fields=("nombreLector","usernameLector","fechaCreacionLector")
    list_filter=("nombreLector", "usernameLector","fechaCreacionLector")
    date_hierarchy="fechaCreacionLector"
admin.site.register(Bibliotecario, BibliotecarioAdmin)
admin.site.register(Libro,LibroAdmin)
admin.site.register(AutorLibro)
admin.site.register(Reservacion)
admin.site.register(Idioma)
admin.site.register(EtiquetaLibro)
admin.site.register(Editorial)
admin.site.register(Lector,LectorAdmin)
admin.site.register(GeneroLibro)
admin.site.register(Pais)