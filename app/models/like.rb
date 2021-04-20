# frozen_string_literal: true

# rubocop:disable Style/Documentation

class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :post_id }

  belongs_to :user
  belongs_to :post
end
# rubocop:enable Style/Documentation
