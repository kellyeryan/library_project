# frozen_string_literal: true

class CreateBookLoans < ActiveRecord::Migration[6.0]
  def change
    create_table :book_loans do |t|
      t.integer :book_id
      t.integer :patron_id
    end
  end
end
