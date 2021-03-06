# Generated by Django 2.2.5 on 2020-03-11 18:13

import datetime
from django.db import migrations, models
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('inventario', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Valores_conceptos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('resp', models.IntegerField()),
                ('cd', models.IntegerField()),
                ('libros', models.IntegerField()),
                ('ssue', models.IntegerField()),
                ('nombre_concepto', models.CharField(max_length=50)),
                ('id_formulario', models.IntegerField()),
            ],
        ),
        migrations.AlterField(
            model_name='formulario',
            name='fecha_publicacion',
            field=models.DateTimeField(default=datetime.datetime(2020, 3, 11, 18, 13, 14, 918966, tzinfo=utc)),
        ),
    ]
