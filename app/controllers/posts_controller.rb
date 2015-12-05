class PostsController < ApplicationController
  def edit
    @post = Post.find(params[:id])
  end
  def update
    # binding.pry
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to user_path(@post.user_id)
    else
      render :new
    end
  end

  def new
    @post = Post.new
  end
  def create
    # binding.pry
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(@post.user_id)
    else
      render :new
    end
  end

  def show
  end

  def index
  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:ledge, :appreciate, :user_id)
  end
end
