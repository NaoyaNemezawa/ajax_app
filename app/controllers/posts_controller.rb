class PostsController < ApplicationController

  def index
    @posts =  Post.all
  end

  def new
  end

  def create
    Post.create(content: params[:content])
    # post=Post.new
    # post=params[:content]
    # post.save
  end

end
