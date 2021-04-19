# rubocop:disable Style/Documentation
# rubocop:disable Layout/LineLength
# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(post_id: params[:post_id])

    if @like.save
      redirect_to posts_path, notice: 'You liked a post.'
    else
      redirect_to posts_path, alert: 'You cannot like this post.'
    end
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, post_id: params[:post_id])
    if like
      like.destroy
      redirect_to posts_path, notice: 'You disliked a post.'
    else
      redirect_to posts_path, alert: 'You cannot dislike post that you did not like before.'
    end
  end
end
# rubocop:enable Style/Documentation
# rubocop:enable Layout/LineLength
