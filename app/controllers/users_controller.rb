class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follower'
  end



  def show
    @user = User.find(params[:id])
  end



  private
  def user_params
    params.require(:user).permit(:name, :email,:password, :password_confirmation, :image, :remember_digest)
  end

end
