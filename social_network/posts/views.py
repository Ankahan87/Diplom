from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth.decorators import login_required
from rest_framework.permissions import IsAdminUser, IsAuthenticated

from .models import Comment, Post, Like
from .serializers import PostSerializer, PUT_POST_PostSerializer, CommentPostSerializer, CommentGetSerializer, LikePostSerializer

class PostDetailsView(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def get(self, request, post_id):
        try:
            post = Post.objects.get(id=post_id)
            comment = Comment.objects.filter(post=post_id)
            com_rev = CommentGetSerializer(comment, many=True)
            ser_post = PostSerializer(post)
            return Response(ser_post.data)
        except Post.DoesNotExist:
            return Response({"status": "false", "message": "404 Not Found"})
        
class PostCreate(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def put(self, request):
        imput_data = request.data
        serializer = PUT_POST_PostSerializer(data=imput_data)
        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response({"status": "true", "data" : serializer.data})
        else:
            return Response({"status": "false", "message": "400 Bad Request"})
        
class PostUpdate(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def post(self, request, post_id):
        imput_data = request.data
        try:
            post_ = Post.objects.get(id=post_id)
            if post_.author_id == int(imput_data['author_id']):
                serializer = PUT_POST_PostSerializer(data=imput_data)
                if serializer.is_valid(raise_exception=True):
                    serializer.save()
                    return Response({"status": "true", "data" : serializer.data})
                else:
                    return Response({"status": "false", "message": "400 Bad Request"})
            else:
                return Response({"status": "false", "message": "404 Not Found (author)"})
        except:
            Post.DoesNotExist()
            return Response({"status": "false", "message": "404 Not Found"})

class CommentCreate(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def put(self, request):
        imput_data = request.data
        serializer = CommentPostSerializer(data=imput_data)
        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response({"status": "true", "data" : serializer.data})
        else:
            return Response({"status": "false",  "message": "400 Bad Request"})

class CommentUpdate(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def post(self, request, comm_id):
        imput_data = request.data
        try:
            comm_ = Comment.objects.get(id=comm_id)
            if comm_.author_id == int(imput_data['author_id']):
                serializer = CommentPostSerializer(data=imput_data)
                if serializer.is_valid(raise_exception=True):
                    serializer.save()
                    return Response({"status": "true", "data" : serializer.data})
                else:
                    return Response({"status": "false", "message": "400 Bad Request"})
            else:
                return Response({"status": "false", "message": "404 Not Found (author)"})
        except:
            Comment.DoesNotExist
            return Response({"status": "false", "message": "404 Not Found"})
            
class LikeCreate(APIView):
    permission_classes = [IsAuthenticated, IsAdminUser]
    def put(self, request):
        imput_data = request.data
        serializer = LikePostSerializer(data=imput_data)
        if serializer.is_valid(raise_exception=True):
            serializer.save()
            return Response({"status": "true", "data" : serializer.data})
        else:
            return Response({"status": "false", "message": "400 Bad Request"})

class CommentDelete(APIView):
    permission_classes = [IsAuthenticated]
    def delete(self, request, comm_id):
        imput_data = request.data
        serializer = CommentPostSerializer(data=imput_data)
        if serializer.is_valid(raise_exception=True):
            ob = Comment.objects.get(id=int(comm_id))
            ob.delete()
            return Response({"status": "true", "message": "202 Accepted"})
        else:
            return Response({"status": "false", "message": "400 Bad Request"})

class PostDelete(APIView):
    permission_classes = [IsAuthenticated]
    def delete(self, request, post_id):
        imput_data = request.data
        serializer = PostSerializer(data=imput_data)
        if serializer.is_valid(raise_exception=True):
            ob = Comment.objects.get(id=int(post_id))
            ob.delete()
            return Response({"status": "true", "message": "202 Accepted"})
        else:
            return Response({"status": "false", "message": "400 Bad Request"})