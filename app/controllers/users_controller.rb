# frozen_string_literal: true

# rubocop:disable Style/Documentation

class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
    @pending_invitations = current_user.pending_friends
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.ordered_by_most_recent
  end
end
# rubocop:enable Style/Documentation
