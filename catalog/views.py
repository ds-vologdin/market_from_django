from django.views import generic

from .models import Product, MainCategoryProduct, CategoryProduct


def get_categorys():
    # TODO: Подумать над кешированием этих запросов
    main_categorys = MainCategoryProduct.objects.all()
    categorys = [
        {
            'main': main_category,
            'sub': CategoryProduct.objects.filter(
                main_category_id__exact=main_category.id
            ),
        }
        for main_category in main_categorys
    ]
    return categorys


# Create your views here.
class IndexView(generic.ListView):
    model = Product
    template_name = 'catalog/index.html'

    def get_queryset(self):
        return Product.objects.all().order_by('-rating', 'cost')[:5]

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context.update({
            'categorys': get_categorys(),
        })
        return context


class DetailView(generic.DetailView):
    model = Product
    template_name = 'catalog/detail.html'

    def get_context_data(self, **kwargs):
        context = super(DetailView, self).get_context_data(**kwargs)
        context.update({
            'categorys': get_categorys(),
        })
        return context
