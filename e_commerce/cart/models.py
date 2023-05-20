from django.db import models
from accounts.models import Accounts
from products.models import Products
# Create your models here.

class Cart(models.Model):
    cart_id = models.AutoField(primary_key=True)
    u = models.ForeignKey(Accounts,to_field='u_id',on_delete=models.CASCADE,default=0)
    total = models.IntegerField(default=0)


    class Meta:
        db_table = 'cart'


class CartItem(models.Model):
    cartitem_id = models.AutoField(primary_key=True)
    c = models.ForeignKey(Cart,to_field='cart_id',on_delete=models.CASCADE)
    p = models.ForeignKey(Products,to_field='p_id',on_delete=models.CASCADE)
    quantity = models.IntegerField()

    class Meta:
        db_table = 'cart_items'

