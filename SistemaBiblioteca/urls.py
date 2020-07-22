"""SistemaBiblioteca URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from GestionPrestamo.views import registrarUsuario, LibroViewSet,RatingViewSet,UsuarioViewSet, LibrosReservadosViewSet, hello_user
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register(r'libros',LibroViewSet)
router.register(r'ratings',RatingViewSet)
router.register(r'usuarios',UsuarioViewSet)
router.register(r'librosReservados',LibrosReservadosViewSet)

urlpatterns = router.urls

urlpatterns += [
    path('admin/', admin.site.urls),
    path('',include('GestionPrestamo.urls')),
    path('',include('django.contrib.auth.urls'),name='login'),
    path('registro', registrarUsuario,name='registrarUsuario'),
    path('hello', hello_user,name='hello'),
    path('social-auth/', include('social_django.urls', namespace='social'))
]
