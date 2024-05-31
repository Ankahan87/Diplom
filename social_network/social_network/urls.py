"""
URL configuration for social_network project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from posts.views import PostDetailsView, PostCreate, PostUpdate, PostDelete, CommentCreate, CommentUpdate, CommentDelete, LikeCreate

urlpatterns = [
    path('admin/', admin.site.urls),
    path('post_info/<int:post_id>/', PostDetailsView.as_view()),
    path('post_create/', PostCreate.as_view()),
    path('post_update/<int:post_id>/', PostUpdate.as_view()),
    path('post_del/<int:post_id>/', PostDelete.as_view()),
    path('comment/', CommentCreate.as_view()),
    path('comment_update/<int:comm_id>/', CommentUpdate.as_view()),
    path('comment_delene/<int:comm_id>/', CommentDelete.as_view()),
    path('like/', LikeCreate.as_view())
]