# frozen_string_literal: true

class CreatePatrons < ActiveRecord::Migration[6.0]
  def change
    create_table :patrons do |t|
      t.string :first_name
      t.string :last_name
      t.integer :library_card_number
      t.string :password_digest
    end
  end
end
