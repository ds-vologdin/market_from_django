from .models import MainCategoryProduct


def get_categorys():
    # TODO: Подумать над кешированием этих запросов
    main_categorys = MainCategoryProduct.objects.all().order_by('priority')
    categorys = [
        {
            'main': main_category,
            'sub': main_category.categoryproduct_set.all().order_by('priority')
        }
        for main_category in main_categorys
    ]
    return categorys
