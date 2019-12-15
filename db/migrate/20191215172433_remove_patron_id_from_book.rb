# frozen_string_literal: true

class RemovePatronIdFromBook < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :patron_id
  end
end
