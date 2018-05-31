from django.db import models


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

    def __str__(self):
        return self.name


def product_directory_path(instance, filename):
    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
    return 'user_{0}/{1}'.format(instance.product.id, filename)


class ImagesProduct(models.Model):
    image_file = models.ImageField(upload_to=product_directory_path)
    priority = models.IntegerField()
    product = models.ForeignKey(Product, on_delete=models.CASCADE)

    def __str__(self):
        return self.image_file
