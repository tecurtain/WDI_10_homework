class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    # render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])
    # render json: @comment
  end

  def create
    @comment = Comment.new(comments_params)
    if @comment.save
      render json: @comment
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  def comments_params
    params.require(:comment).permit(:usercomment, :post_id)
  end

end
