class CommentsController < ApplicationController
  def index
    @users = User.all 
    @comments = Comment.all
    @user = User.new
    @comment = Comment.new
  end

  def new
    @user = User.new
    @comment = Comment.new
  end
  def create   
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      render :new, status: :unprocessable_entity
   end
  end

  private
  def comment_params
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end