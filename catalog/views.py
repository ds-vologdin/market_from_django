from django.views import generic

from .models import Product, MainCategoryProduct, CategoryProduct


def get_categorys():
    # TODO: Подумать над кешированием этих запросов
    main_categorys = MainCategoryProduct.objects.all().order_by('priority')
    categorys = [
        {
            'main': main_category,
            'sub': CategoryProduct.objects.filter(
                main_category_id__exact=main_category.id
            ).order_by('priority'),
        }
        for main_category in main_categorys
    ]
    return categorys


# Хотел объявить класс mixins, однако get_context_data оказался везде
# уникальным
# class CategorysToContext():
#     def get_context_data(self, **kwargs):
#         context = super().get_context_data(**kwargs)
#         context.update({
#             'categorys': get_categorys(),
#         })
#         return context


class IndexView(generic.ListView):
    model = Product
    template_name = 'catalog/index.html'

    def get_queryset(self):
        if 'category_id' in self.kwargs:
            return Product.objects.filter(
                category_id__exact=self.kwargs['category_id']
            ).order_by('-rating', 'cost')[:5]
        return Product.objects.all().order_by('-rating', 'cost')[:5]

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categorys'] = get_categorys()
        if 'category_id' in self.kwargs:
            context['current_category'] = CategoryProduct.objects.get(
                pk=self.kwargs['category_id']
            )
        return context


class CategoryView(generic.ListView):
    model = CategoryProduct
    template_name = 'catalog/main_category_detail.html'
    context_object_name = 'category_product_list'

    def get_queryset(self):
        if 'main_category_id' in self.kwargs:
            return CategoryProduct.objects.filter(
                main_category_id__exact=self.kwargs['main_category_id']
            )
        return CategoryProduct.objects.all().order_by('main_category')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categorys'] = get_categorys()
        if 'main_category_id' in self.kwargs:
            context.update({
                'main_category_product': MainCategoryProduct.objects.get(
                    pk=self.kwargs['main_category_id']
                ),
            })
        return context


class DetailView(generic.DetailView):
    model = Product
    template_name = 'catalog/detail.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context.update({
            'categorys_parameters': self.object.get_categorys_with_parameters(),
            'main_parameters': self.object.get_main_parameters(),
            'images_url': self.object.get_url_images(),
            'categorys': get_categorys(),
        })
        return context
