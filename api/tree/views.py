from django.shortcuts import render_to_response
from django.http import HttpResponse
# Create your views here.

def index(request):
	return HttpResponse("You're looking at poll %s." % 5)