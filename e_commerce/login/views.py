from django.shortcuts import render
from login.models import Login
from django.http import HttpResponseRedirect,HttpResponse

# Create your views here.
def login(request):
    if request.method == "POST":
        name = request.POST.get("username")
        password = request.POST.get("password")
        obj = Login.objects.filter(username=name, password=password)

        for ob in obj:
            tp = ob.type
            uid = ob.u_id
            if tp == "user":
                request.session["uid"] = uid
                return HttpResponseRedirect('/products/')

    return render(request,'login/login.html')