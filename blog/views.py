from django.shortcuts import render, get_object_or_404, Http404, redirect
from django.utils import timezone
from .models import Post
from .forms import PostForm

def post_list(request):
    posts = Post.objects.filter(published_date__lte=timezone.now()).order_by('-published_date')
    return render(request, 'blog/post_list.html', {'posts': posts})

def post_detail(request, pk):
    try:
        post = get_object_or_404(Post, pk=pk)
        return render(request, 'blog/post_detail.html', {'post': post})
    except Http404:
        return render(request, 'blog/post_detail.html', {'post': None}, status=404)
 
def post_new(request):
    if not request.user.is_authenticated:
        return render(request, 'blog/post_new.html', {'form': None}, status=403)
    if request.method == "POST":
        form = PostForm(request.POST)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.created_date = timezone.now()
            post.published_date = timezone.now()
            post.save()
            return redirect('/')
    else:
        form = PostForm()
    return render(request, 'blog/post_new.html', {'form': form})

def post_edit(request, pk):
    try:
        post = get_object_or_404(Post, pk=pk)
        if post.author != request.user or not request.user.is_superuser:
            raise Http404
        if request.method == "POST":
            form = PostForm(request.POST, instance=post)
            if form.is_valid():
                post = form.save(commit=False)
                post.author = request.user
                post.published_date = timezone.now()
                post.save()
                return redirect('/')
        else:
            form = PostForm(instance=post)
        return render(request, 'blog/post_edit.html', {'form': form})
    except Http404:
        return render(request, 'blog/post_edit.html', {'form': None}, status=404)