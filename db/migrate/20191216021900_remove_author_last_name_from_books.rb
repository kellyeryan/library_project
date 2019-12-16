class RemoveAuthorLastNameFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :author_last_name, :string
  end
end
