from django.shortcuts import render


def index(request):
    return render(request, 'index.html', {'title': 'Hello World! 123'})