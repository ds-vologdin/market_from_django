from django.db import models
from django.contrib.postgres.fields import JSONField


class MainCategoryProduct(models.Model):
    name = models.CharField(max_length=200)
    priority = models.IntegerField(default=1000)

    def __str__(self):
        return self.name


class CategoryProduct(models.Model):
    name = models.CharField(max_length=200)
    main_category = models.ForeignKey(
        MainCategoryProduct, on_delete=models.CASCADE
    )
    priority = models.IntegerField(default=1000)

    def __str__(self):
        return self.name


class Product(models.Model):
    name = models.CharField(max_length=200)
    description = models.TextField()
    cost = models.DecimalField(max_digits=12, decimal_places=2, blank=True)
    rating = models.IntegerField()
    category = models.ForeignKey(CategoryProduct, on_delete=models.CASCADE)
    parameters = JSONField(default={})

    def __str__(self):
        return self.name

    def get_parameters(self):
        return self.parameterproduct_set.all().order_by('priority')

    def get_main_parameters(self):
        ''' Параметры с приоритетом меньше 1000 '''
        return self.parameterproduct_set.filter(
            priority__lte=1000
        ).order_by('priority')

    def get_categorys_with_parameters(self):
        parameters = self.get_parameters()

        categorys_ids = (parametr.category_id for parametr in parameters)
        categorys_ids = list(set(categorys_ids))

        categorys_objects = CategoryParameterProduct.objects.filter(
            id__in=categorys_ids
        ).order_by('priority')

        categorys_with_parameters = []
        for category in categorys_objects:
            parameters_category = [
                parameter for parameter in parameters
                if parameter.category_id == category.id
            ]
            categorys_with_parameters.append({
                'category': category.name,
                'parameters': parameters_category,
            })

        return categorys_with_parameters

    def get_url_images(self):
        images = self.imagesproduct_set.all().order_by('priority')
        return [image.image_file.url for image in images]


def product_directory_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/product_<id>/<filename>
    return 'product_{0}/{1}'.format(instance.product.id, filename)


class ImagesProduct(models.Model):
    image_file = models.ImageField(upload_to=product_directory_path)
    priority = models.IntegerField(default=1000)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)


class CategoryParameterProduct(models.Model):
    name = models.CharField(max_length=200)
    priority = models.IntegerField(default=1000)

    def __str__(self):
        return self.name


class ParameterProduct(models.Model):
    CHOCES_TYPE = (
        ('str', 'str'),
        ('bool', 'bool'),
        ('int', 'int'),
        ('float', 'float'),
        ('dict', 'dict'),
        ('list', 'list'),
    )
    name = models.CharField(max_length=200)
    value = models.CharField(max_length=200)
    type = models.CharField(max_length=20, choices=CHOCES_TYPE, default='str')
    priority = models.IntegerField(default=1000)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    category = models.ForeignKey(
        CategoryParameterProduct, on_delete=models.CASCADE
    )

    def __str__(self):
        return self.name
