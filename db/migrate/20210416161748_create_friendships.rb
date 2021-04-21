# rubocop:disable Style/Documentation
# frozen_string_literal: true

class CreateFriendships < ActiveRecord::Migration[6.1]
  def change
    create_table :friendships do |t|
      t.references :user, foreign_key: true
      t.references :friend
      t.boolean :confirmed

      t.timestamps
    end

  end
end
# rubocop:enable Style/Documentation
