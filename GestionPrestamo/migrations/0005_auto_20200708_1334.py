# Generated by Django 3.0.7 on 2020-07-08 13:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GestionPrestamo', '0004_auto_20200707_1115'),
    ]

    operations = [
        migrations.AlterField(
            model_name='libro',
            name='genero_Libro',
            field=models.ManyToManyField(help_text='Seleccione un genero para este libro', to='GestionPrestamo.GeneroLibro', verbose_name='Género del Libro'),
        ),
    ]