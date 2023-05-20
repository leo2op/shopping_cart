from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [

    path('',views.cart),
    path('cart/', views.cart, name='cart'),
    path('add_to_cart/', views.addtocart),
    path('cart/update-cart/<int:item_id>/', views.update_cart, name='update_cart'),
    path('remove-item/<int:item_id>/', views.remove_item, name='remove_item'),

]