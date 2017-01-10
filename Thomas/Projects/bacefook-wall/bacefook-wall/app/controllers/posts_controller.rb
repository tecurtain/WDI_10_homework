class PostsController < ApplicationController
  def index
    @posts = Post.all
    # render json: @post
  end

  def show
    @post = Post.find(params[:id])
    # render json: @post
  end

  def create
    @post = Post.new(posts_params)
    if @post.save
      render json: @post
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  def posts_params
    params.require(:post).permit(:userpost)
  end

end
