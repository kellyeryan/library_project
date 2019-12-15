# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :library_id
      t.integer :patron_id
      t.string :title
      t.string :author_last_name
      t.string :author_first_name
      t.string :catalog_number
    end
  end
end
