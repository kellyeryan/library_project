class RemoveAuthorFirstNameFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :author_first_name, :string
  end
end
