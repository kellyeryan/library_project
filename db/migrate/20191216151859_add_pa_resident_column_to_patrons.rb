class AddPaResidentColumnToPatrons < ActiveRecord::Migration[6.0]
  def change
    add_column :patrons, :pa_resident, :boolean
  end
end
