# Generated by Django 2.2.5 on 2020-03-27 06:58

import datetime
from django.db import migrations, models
import django.db.models.deletion
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0005_auto_20200327_0656'),
    ]

    operations = [
        migrations.AlterField(
            model_name='formulario',
            name='fecha_publicacion',
            field=models.DateTimeField(default=datetime.datetime(2020, 3, 27, 6, 58, 28, 985800, tzinfo=utc)),
        ),
        migrations.AlterField(
            model_name='formulario',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='valores_conceptos',
            name='id_formulario',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='inventario.Formulario'),
        ),
    ]