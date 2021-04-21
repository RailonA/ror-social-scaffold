# rubocop:disable Style/Documentation
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
# frozen_string_literal: true

module UserHelper
  def render_friendship_btn(user)
    return if current_user == user

    friendship_param = { friendship: { user_id: current_user, friend_id: user, confirmed: false } }
    delete_param = { id: user.id }

    if !current_user.friend?(user) && !current_user.already_friend?(user)
      link_to 'Add Friend', friendships_path(friendship_param),
              method: :post, class: ''

    elsif !current_user.already_friend?(user)
      link_to 'Remove friend',
              friendship_path(delete_param),
              method: :delete, class: ''

    elsif current_user.already_friend?(user)

      link = capture do
        link_to 'Delete Request', friendship_path(delete_param),
                method: :delete, class: ''
      end
      link << capture { link_to ' request pending..', friendship_path(current_user), class: '' }
    end
  end
end

def render_request_btn(user); end
# rubocop:enable Style/Documentation
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
