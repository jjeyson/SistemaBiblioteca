# Generated by Django 3.0.7 on 2020-07-14 22:56

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('GestionPrestamo', '0008_rating'),
    ]

    operations = [
        migrations.AlterField(
            model_name='rating',
            name='estrellasRating',
            field=models.IntegerField(validators=[django.core.validators.MinValueValidator(1), django.core.validators.MaxValueValidator(5)], verbose_name='Valoracion'),
        ),
    ]
