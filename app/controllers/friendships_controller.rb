class FriendshipsController < ApplicationController
  def index
    @friendship = Friendship.all
  end

  def send_request
    if current_user.send_invitation(params[:user_id])
      flash.notice = 'Friend request sent'
      redirect_to users_path
    else
      flash.now[:notice] = 'error occured'
    end
  end

  def accept_invitation
    if current_user.confirm_friend(params[:user_id])
      flash.notice = 'friend accepted'
      redirect_to users_path
    else
      flash.now[:notice] = 'error occured'
    end
  end

  def reject_invitation
    current_user.reject_friend(params[:user_id])
    redirect_to users_path
  end

  def pending_invitation
    @pending_friends = current_user.pending_invites
  end

  def remove_friend
    friend = Friendship.find_by(user_id: params[:user_id], friend_id: current_user.id)
    inverse_friend = Friendship.find_by(user_id: current_user.id, friend_id: params[:user_id])
    friend&.delete
    inverse_friend&.delete
  end

  def destroy
    user = User.find(params[:user_id])
    friend = current_user.friendships.find_by_friend_id(user.id)
    inverse_friend = current_user.inverse_friendships.find_by_user_id(user.id)
    friend.destroy
    inverse_friend.destroy
    redirect_to users_path
  end
end