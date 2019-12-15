# frozen_string_literal: true

class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
    end
  end
end
