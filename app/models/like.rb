# rubocop:disable Style/Documentation
# frozen_string_literal: true

class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :post_id }

  belongs_to :user
  belongs_to :post
end
# rubocop:enable Style/Documentation
