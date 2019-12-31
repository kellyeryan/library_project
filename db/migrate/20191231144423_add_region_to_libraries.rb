# frozen_string_literal: true

class AddRegionToLibraries < ActiveRecord::Migration[6.0]
  def change
    add_column :libraries, :region, :string
  end
end
