# frozen_string_literal: true

class RemovePaResidentFromPatrons < ActiveRecord::Migration[6.0]
  def change
    remove_column :patrons, :pa_resident, :boolean
  end
end
