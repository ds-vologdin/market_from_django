from django.contrib import admin

from .models import Product, CategoryProduct, MainCategoryProduct, \
    ImagesProduct, ParameterProduct, CategoryParameterProduct
# Register your models here.


class CategoryInline(admin.TabularInline):
    model = CategoryProduct
    extra = 3


class ProductInline(admin.StackedInline):
    model = Product
    extra = 3


class ImagesProductInline(admin.TabularInline):
    model = ImagesProduct
    extra = 3


class ParameterProductInline(admin.TabularInline):
    model = ParameterProduct
    extra = 10


class ProductAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {'fields': ['name', 'description', 'cost', 'category']}),
        ('Rating', {'fields': ['rating']}),
    ]
    # inlines = [CategoryInline]
    # list_display = ('question_text', 'pub_date', 'was_published_recently')
    # list_filter = ['pub_date']
    search_fields = ['name']
    inlines = [ImagesProductInline, ParameterProductInline]


class CategoryProductAdmin(admin.ModelAdmin):
    inlines = [ProductInline]
    list_display = ('name', 'priority')


class MainCategoryProductAdmin(admin.ModelAdmin):
    inlines = [CategoryInline]
    list_display = ('name', 'priority')


class CategoryParameterProductAdmin(admin.ModelAdmin):
    search_fields = ['name']
    list_filter = ['priority']
    list_display = ('name', 'priority')


admin.site.register(Product, ProductAdmin)
admin.site.register(CategoryProduct, CategoryProductAdmin)
admin.site.register(MainCategoryProduct, MainCategoryProductAdmin)
admin.site.register(CategoryParameterProduct, CategoryParameterProductAdmin)
