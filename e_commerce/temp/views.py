from django.shortcuts import render


# Create your views here.
def basehtml(request):
    return render(request, 'temp/base.html')

def basetemphtml(request):
    return render(request, 'temp/baseforlogin.html')
