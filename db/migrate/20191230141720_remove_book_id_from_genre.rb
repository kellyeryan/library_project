# frozen_string_literal: true

class RemoveBookIdFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :book_id, :integer
  end
end
