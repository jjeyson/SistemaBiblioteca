# Generated by Django 3.0.7 on 2020-06-26 10:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GestionPrestamo', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='libro',
            name='ISBNLibro',
            field=models.CharField(help_text='13 Caracteres <a href="https://www.isbn-international.org/content/what-isbn">ISBN number</a>', max_length=20, verbose_name='ISBN'),
        ),
    ]