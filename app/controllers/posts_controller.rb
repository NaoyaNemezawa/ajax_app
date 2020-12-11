class PostsController < ApplicationController

  def index
    @posts =  Post.all.order(id: "DESC")
  end

  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
    # post=Post.new
    # post=params[:content]
    # post.save
  end

end
