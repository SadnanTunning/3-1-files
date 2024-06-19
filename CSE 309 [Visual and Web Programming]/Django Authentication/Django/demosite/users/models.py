from django.db import models

# Create your models here.
from django.contrib.auth.models import AbstractBaseUser
from users.managers import UserManager
from django.contrib.auth.models import PermissionsMixin


# Create your models here.

class User(AbstractBaseUser, PermissionsMixin):
    email=models.EmailField(unique=True)
    is_verified=models.BooleanField(default=False)
    is_active=models.BooleanField(default=False)
    is_staff=models.BooleanField(default=False)
    is_superuser=models.BooleanField(default=False)
    password=models.CharField(max_length=40)
    role=models.CharField(max_length=40)
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []
    objects=UserManager()