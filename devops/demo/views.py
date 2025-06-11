
# Create your views here.


from django.http import HttpResponse
from django.shortcuts import render


def demosite_view(request):
            print("--- demosite_view function was called! ---") # Debug print
            return render(request, 'demosite.html')
