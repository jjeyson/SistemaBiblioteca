# Generated by Django 3.0.7 on 2020-07-08 13:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GestionPrestamo', '0005_auto_20200708_1334'),
    ]

    operations = [
        migrations.AlterField(
            model_name='libro',
            name='genero_Libro',
            field=models.ManyToManyField(help_text='Seleccione un genero para este libro', to='GestionPrestamo.GeneroLibro', verbose_name='Género(s)'),
        ),
    ]
