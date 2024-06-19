import imp
from django.shortcuts import render,redirect
from django.contrib.auth import authenticate
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from .models import User
from django.contrib.auth.hashers import make_password
from django.contrib.auth.decorators import login_required
from .models import User
# Create your views here.
def login(request):
    if(request.method== "POST"):
        user=authenticate(request,email=request.POST["email"],password=request.POST["password"])
        if(user != None):
            auth_login(request,user)
            return redirect('home')
    return render(request, 'users/login.html')

def register(request):
    if(request.method== "POST"):
        user=User(email =request.POST["email"],password=make_password(request.POST["password"]))
        user.is_active = True
        user.save()
        if(user != None):
            user = authenticate(request, username=request.POST["email"], password=request.POST["password"])
            auth_login(request,user)
            return redirect('home')
    return render(request, 'users/register.html')

@login_required(login_url='login')
def home(request):
    return render(request, 'users/home.html')

def logout(request):
    auth_logout(request)
    return render(request, 'users/login.html')
