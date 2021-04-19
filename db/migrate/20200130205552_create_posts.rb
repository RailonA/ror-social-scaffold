# rubocop:disable Style/Documentation
# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :content

      t.timestamps
    end

    add_index :posts, :user_id
  end
end
# rubocop:enable Style/Documentation
