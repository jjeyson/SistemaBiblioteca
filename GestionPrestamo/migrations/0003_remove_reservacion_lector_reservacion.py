# Generated by Django 3.0.7 on 2020-07-03 10:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('GestionPrestamo', '0002_reservacion_usuario_reservacion'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='reservacion',
            name='lector_Reservacion',
        ),
    ]
