class UsersController < ApplicationController
  def index
    @users = User.all 
    @user = User.new
    @comment = Comment.new
  end

  def new
    @user = User.new
    @comment = Comment.new
  end
  
  def create
    @user = User.new(user_params)
    @comment = Comment.new(comment_params)
    if @user.save
      @comment.save
      redirect_to users_path
    else
      puts @user.errors.full_messages
      puts @comment.errors.full_messages
      render :new
    end
  end
  
  def show

  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname)
  end
  def comment_params
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses).merge(user_id: current_user.id)
  end
end
