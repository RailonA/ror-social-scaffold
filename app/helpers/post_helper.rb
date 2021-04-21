# rubocop:disable Style/Documentation

# frozen_string_literal: true

module PostHelper
  def display_errors(post)
    return unless post.errors.full_messages.any?

    content_tag :p, "Post could not be saved. #{post.errors.full_messages.join('. ')}", class: 'errors'
  end
end
# rubocop:enable Style/Documentation
