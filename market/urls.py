from django.contrib import admin
from django.urls import path, include

from django.contrib.staticfiles.urls import static

from .settings import ConfigClass


urlpatterns = [
    path('catalog/', include('catalog.urls')),
    path('admin/', admin.site.urls),
]

if ConfigClass.DEBUG:
    urlpatterns += static(
        ConfigClass.MEDIA_URL, document_root=ConfigClass.MEDIA_ROOT
    )
