from django.db import models
from django.contrib.postgres.fields import JSONField


class MainCategoryProduct(models.Model):
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name


class CategoryProduct(models.Model):
    name = models.CharField(max_length=200)
    main_category = models.ForeignKey(
        MainCategoryProduct, on_delete=models.CASCADE
    )

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


def product_directory_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/product_<id>/<filename>
    return 'product_{0}/{1}'.format(instance.product.id, filename)


class ImagesProduct(models.Model):
    image_file = models.ImageField(upload_to=product_directory_path)
    priority = models.IntegerField()
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
