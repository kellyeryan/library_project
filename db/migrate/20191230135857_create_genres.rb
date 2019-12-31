# frozen_string_literal: true

class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name
      t.integer :book_id
    end
  end
end
