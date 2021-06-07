# Generated by Django 2.2.5 on 2020-03-27 08:37

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0007_auto_20200327_0737'),
    ]

    operations = [
        migrations.AddField(
            model_name='formulario',
            name='disponible',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='valores_conceptos',
            name='disponible',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='formulario',
            name='fecha_publicacion',
            field=models.DateTimeField(default=datetime.datetime(2020, 3, 27, 8, 37, 46, 518838, tzinfo=utc)),
        ),
    ]
