from django.http import HttpResponse

from django.shortcuts import render
from django.views.generic import View

# Create your views here.

class HelloWorldView(View):

    http_method_names = ['get']

    def get(self, request):
        return HttpResponse("HELLO WORLD")
