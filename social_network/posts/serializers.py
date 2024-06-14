from rest_framework import serializers
from .models import Post, Like, Comment

class CommentPostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['author', 'text', 'post', 'author_id']
        
class CommentGetSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['author', 'text', 'created_at']   


class PostSerializer(serializers.ModelSerializer):
    likes_count = serializers.SerializerMethodField()
    comments = CommentGetSerializer(many=True)
    text = serializers.CharField()
    image = serializers.CharField()
    #created_at = serializers.DateTimeField()
    class Meta:
        model = Post
        fields = ['id', 'text', 'image', 'created_at', 'comments', 'likes_count']
    def get_likes_count(self, instance):
        return instance.comments.count()

class LikePostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['author', 'post']

class LikeCount(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['author', 'post']

class PUT_POST_PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = ['text', 'image', 'author', 'author_id']

