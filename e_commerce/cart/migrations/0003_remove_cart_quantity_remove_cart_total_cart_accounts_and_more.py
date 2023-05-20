# Generated by Django 4.2.1 on 2023-05-18 14:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
        ('accounts', '0001_initial'),
        ('cart', '0002_alter_cart_options'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cart',
            name='quantity',
        ),
        migrations.RemoveField(
            model_name='cart',
            name='total',
        ),
        migrations.AddField(
            model_name='cart',
            name='accounts',
            field=models.OneToOneField(default=1, on_delete=django.db.models.deletion.CASCADE, to='accounts.accounts'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='cart',
            name='products',
            field=models.ManyToManyField(to='products.products'),
        ),
    ]