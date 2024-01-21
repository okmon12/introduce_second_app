class UsersController < ApplicationController
  def index
    @users = User.all 
    @user = User.new
    @comment = Comment.new
  end

  def new
    @user = User.new
    @comment = Comment.new
    @user_comment = UserComment.new
  end
  
  def create
    @user_comment = UserComment.new(user_params)
    if @user_comment.valid?
      @user_comment.save
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  
  def show

  end

  private

  def user_params
    params.require(:user_comment).permit(:name, :nickname, :birthdate, :strengths, :weaknesses, :image, :message).merge(user_id: current_user.id)
  end
end
