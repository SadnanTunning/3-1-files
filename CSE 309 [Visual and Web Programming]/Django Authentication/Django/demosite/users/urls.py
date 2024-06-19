from django.urls import path

from . import views as userview

urlpatterns = [
    path('login', userview.login, name='login'),
    path('logout', userview.logout, name='logout'),
    path('register', userview.register, name='register'),
    path('home', userview.home, name='home'),
]