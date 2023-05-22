# Generated by Django 4.2.1 on 2023-05-22 10:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('accounts', '0001_initial'),
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Cart',
            fields=[
                ('cart_id', models.AutoField(primary_key=True, serialize=False)),
                ('total', models.IntegerField(default=0)),
                ('u', models.ForeignKey(default=0, on_delete=django.db.models.deletion.CASCADE, to='accounts.accounts')),
            ],
            options={
                'db_table': 'cart',
            },
        ),
        migrations.CreateModel(
            name='CartItem',
            fields=[
                ('cartitem_id', models.AutoField(primary_key=True, serialize=False)),
                ('quantity', models.IntegerField()),
                ('c', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='cart.cart')),
                ('p', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='products.products')),
            ],
            options={
                'db_table': 'cart_items',
            },
        ),
    ]
