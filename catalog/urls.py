from django.urls import path

from . import views

app_name = 'catalog'
urlpatterns = [
    path('', views.IndexView.as_view(), name='index'),
    path(
        'category/<int:category_id>/',
        views.IndexView.as_view(),
        name='index_category'
    ),
    path('product/<int:pk>/', views.DetailView.as_view(), name='detail'),
]
