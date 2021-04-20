# frozen_string_literal: true
# rubocop:disable  Layout/LineLength
# rubocop:disable  Style/Documentation

class Comment < ApplicationRecord
  validates :content, presence: true, length: { maximum: 200,
                                                too_long: '200 characters in comment is the maximum allowed.' }

  belongs_to :user
  belongs_to :post
end
# rubocop:enable  Layout/LineLength
# rubocop:enable  Style/Documentation
