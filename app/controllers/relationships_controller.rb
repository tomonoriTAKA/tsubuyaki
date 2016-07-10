class RelationshipsController < ApplicationController
before_action :logged_in_user

  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    redirect_to @user
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end

private
  def relationship_params
    params.require(:relationship).permit(:follower_id, :followed_id)
  end
  def logged_in_user
      unless signed_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end


end
