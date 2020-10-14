from django.contrib import admin
from django.urls import path
from articles import views
 
urlpatterns = [
    path('admin/', admin.site.urls, name='admin'),
    path('', views.archive, name='archive'),
]
