from rest_framework import serializers
from .models import Libro, EtiquetaLibro, GeneroLibro, Editorial, AutorLibro, Pais, Idioma, Reservacion,Rating, Usuario, LibroInstancia

class ReservacionSerializer(serializers.ModelSerializer):
    #tracks = serializers.PrimaryKeyRelatedField(many=True, read_only=True)
    libro_Reservacion = serializers.StringRelatedField(many=False)
    class Meta:
        model = Reservacion
        fields = ['usuario_reservacion','libro_Reservacion']

class UsuarioSerializer(serializers.ModelSerializer):
    class Meta:
        model = Usuario
        fields = ['id','nombreUsuario','apellidosUsuario']

class LibroInstanciaSerializer(serializers.ModelSerializer):
    class Meta:
        model = LibroInstancia
        fields = ['libro_LibroInstancia']

class EtiquetaLibroSerializer(serializers.ModelSerializer):
    class Meta:
        model = EtiquetaLibro
        fields = ['tituloEtiquetaLibro']

class GeneroLibroSerializer(serializers.ModelSerializer):
    class Meta:
        model = GeneroLibro
        fields = ['tituloGeneroLibro']

class EditorialSerializer(serializers.ModelSerializer):
    class Meta:
        model = Editorial
        fields = ['tituloEditorial']

class AutorLibroSerializer(serializers.ModelSerializer):
    class Meta:
        model = AutorLibro
        fields = ['nombreAutorLibro','apellidosAutorLibro']

class IdiomaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Idioma
        fields = ['IdiomaLibro']

class PaisSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pais
        fields = ['tituloPais']

class LibroSerializer(serializers.ModelSerializer):
    etiquetaLibro_Libro = EtiquetaLibroSerializer(many=True,read_only=True)
    genero_Libro = GeneroLibroSerializer(many=True,read_only=True)
    pais_Libro = serializers.RelatedField(source='Pais', read_only=True)
    autorLibro_Libro = AutorLibroSerializer(many=True,read_only=True)
    editorial_Libro = serializers.RelatedField(source='Editorial', read_only=True)
    idiomaLibro = serializers.RelatedField(source='Idioma',read_only=True)
    class Meta:
        model = Libro
        fields = ['idLibro','codigoLibro','tituloLibro','etiquetaLibro_Libro','genero_Libro','pais_Libro','autorLibro_Libro','editorial_Libro','idiomaLibro','resumenLibro','anioPublicacionLibro']

class Libro2Serializer(serializers.ModelSerializer):
    class Meta:
        model = Libro
        fields = ['tituloLibro']

class RatingSerializer(serializers.ModelSerializer):
    #usuario_Rating = serializers.RelatedField(source='Usuario', read_only=True)
    libro_Rating = serializers.StringRelatedField(many=False)
    class Meta:
        model = Rating
        fields = ['id','usuario_Rating','libro_Rating','estrellasRating']
