# frozen_string_literal: true

class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :patron_id
      t.timestamps
    end
  end
end
