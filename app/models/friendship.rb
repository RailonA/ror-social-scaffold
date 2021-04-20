# frozen_string_literal: true
# rubocop:disable Style/Documentation

class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User'
end
# rubocop:enable Style/Documentation
