from django.shortcuts import render,redirect
from cart.models import Cart
from cart.models import CartItem
from django.http import HttpResponseNotAllowed
from products.models import Products
from accounts.models import Accounts



def cart(request):
    ss = request.session["uid"]
    cart_items = CartItem.objects.filter(c_id=ss)
    products = Products.objects.all()
    account = Accounts.objects.get(u_id=ss)
    cart = Cart.objects.get(cart_id=ss)
    total = calculate_total(cart_items)  # Calculate the total
    return render(request, 'cart/cart.html', {'cart_items': cart_items, 'products': products, 'account': account, 'cart': cart})



def addtocart(request):
    ss = request.session["uid"]
    cart = Cart.objects.get(cart_id=ss)
    product_id = request.GET.get('p_id')

    try:
        cart_item = CartItem.objects.get(c_id=ss, p_id=product_id)
        cart_item.quantity += 1
        cart_item.save()
    except CartItem.DoesNotExist:
        product = Products.objects.get(p_id=product_id)
        cart_item = CartItem.objects.create(c_id=ss, p_id=product_id, quantity=1)
        cart_item.cart = cart  # Associate the cart item with the cart
        cart_item.save()

    cart.total = sum(item.p.p_price * item.quantity for item in cart.cartitem_set.all())
    cart.save()

    products = Products.objects.all()
    return render(request, 'products/products.html', {'products': products})


def calculate_total(cart_items):
    total = 0
    for cart_item in cart_items:
        total += cart_item.p.p_price * cart_item.quantity
    return total



def remove_item(request, item_id):
    ss = request.session["uid"]
    cart = Cart.objects.get(cart_id=ss)
    try:
        cart_item = CartItem.objects.get(cartitem_id=item_id)
        cart_item.delete()

        ss = request.session["uid"]
        cart_items = CartItem.objects.filter(c_id=ss)
        cart.total = sum(item.p.p_price * item.quantity for item in cart.cartitem_set.all())
        cart.save()

        return redirect('cart')
    except CartItem.DoesNotExist:
        return redirect('cart')

def update_cart(request, item_id):
    if request.method == 'POST':
        quantity = request.POST.get('quantity')
        try:
            cart_item = CartItem.objects.get(cartitem_id=item_id)
            cart_item.quantity = quantity
            cart_item.save()

            ss = request.session["uid"]
            cart = Cart.objects.get(cart_id=ss)
            cart.total = sum(item.p.p_price * item.quantity for item in cart.cartitem_set.all())
            cart.save()

            return redirect('cart')
        except CartItem.DoesNotExist:
            return redirect('cart')
    else:
        return HttpResponseNotAllowed(['POST'])