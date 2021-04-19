# rubocop:disable Style/Documentation
# frozen_string_literal: true

class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
# rubocop:enable Style/Documentation
