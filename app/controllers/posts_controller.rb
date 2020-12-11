class PostsController < ApplicationController

  def index
    @posts =  Post.all.order(id: "DESC")
  end

  # def new
  # end

  def create
    post = Post.create(content: params[:content], checked: false)
    render json:{post: post}
    # Post.create(content: params[:content])
    # redirect_to action: :index
    # post=Post.new
    # post=params[:content]
    # post.save
  end

  def checked
    # binding.pry
    post = Post.find(params[:id])
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end
    # 上記の条件分岐で更新したレコードを取得する。
    item = Post.find(params[:id])
    render json: {post: item}
  end

end
