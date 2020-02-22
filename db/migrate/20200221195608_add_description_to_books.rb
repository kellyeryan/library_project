# frozen_string_literal: true

class AddDescriptionToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :description, :string
  end
end
