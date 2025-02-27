from django.urls import path

from . import views

app_name = "dja"
urlpatterns = [path("", views.index, name="index")]
