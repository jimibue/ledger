class CommentsController < ApplicationController
  def edit
    @comment = Comment.find(params[:id])
    @users_id = User.all.collect{|user| user[:id]}
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end


  def new
    @users_id = User.all.collect{|user| user[:id]}

    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post_id)
    else
      render :new
    end
  end
  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      redirect_to post_path(comment.post_id)
    else
      render :new
    end
  end
  
  def show
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :post_id, :reply)
  end

end
