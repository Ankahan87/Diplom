from django.db import models
from django.contrib.auth import get_user_model


User = get_user_model()


class Post(models.Model):
    title = models.CharField(max_length=100)
    text = models.CharField(max_length = 5000)
    image = models.CharField(max_length = 500)
    created_at = models.DateField(auto_now_add=True)
    author = models.ForeignKey(User, on_delete = models.CASCADE)
    class Meta:
        ordering = ['-created_at']


# для доп. задания
# class PostImage(models.Model):
#     ...


class Like(models.Model):
    author = models.ForeignKey(User, on_delete = models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='likes')
    class Meta:
        ordering = ['-created_at']



class Comment(models.Model):
    author = models.ForeignKey(User, on_delete = models.CASCADE)
    text = models.CharField(max_length = 200)
    post = models.ForeignKey(Post, on_delete=models.CASCADE, related_name='comments')
    created_at = models.DateTimeField(auto_now_add=True)
    class Meta:
        ordering = ['-created_at']

