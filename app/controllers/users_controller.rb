class UsersController < ApplicationController
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
      puts current_user.inspect
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname)
  end
  def comment_params
    user_id = current_user.id
    params.require(:comment).permit(:birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end
