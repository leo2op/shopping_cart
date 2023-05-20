from django.shortcuts import render
from login.models import Login
from .models import Accounts
from cart.models import Cart

# Create your views here.
def signup(request):
    if request.method == "POST":
        obj = Accounts()
        obj.username = request.POST.get('username')
        obj.password = request.POST.get('password')
        obj.email = request.POST.get('email')
        obj.save()

        ob = Login()
        ob.username = obj.username
        ob.password = obj.password
        ob.u_id = obj.u_id
        ob.type = "user"
        ob.save()

        cartobj = Cart()
        cartobj.cart_id=obj.u_id
        cartobj.u_id = obj.u_id
        cartobj.total = 0
        cartobj.save()

    return render(request, 'accounts/signup.html')
