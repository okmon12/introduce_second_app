class CommentsController < ApplicationController
  def index
    @users = User.all 
    @comments = Comment.all
    @current_user = current_user
    @user = User.new
    @comment = Comment.new
  end

  def new
    @user = User.new
    @comment = Comment.new
  end
  def create   
    @comment = Comment.new(comment_params)
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to comments_path
    else
      render :new, status: :unprocessable_entity
   end
  end
  def edit
    @comment = Comment.find(params[:id])
  end
  def show
    @comment = Comment.find(params[:id])
    @user = @comment.user
  end
  def update
    if 
      @comment = Comment.find(params[:id])
      @comment.update(comment_params)
      redirect_to comments_path
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end