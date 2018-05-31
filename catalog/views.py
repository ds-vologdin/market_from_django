from django.views import generic

from .models import Product


# Create your views here.
class IndexView(generic.ListView):
    model = Product
    template_name = 'catalog/index.html'


class DetailView(generic.DetailView):
    model = Product
    template_name = 'catalog/detail.html'
