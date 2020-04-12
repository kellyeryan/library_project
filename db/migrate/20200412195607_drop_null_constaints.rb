class DropNullConstaints < ActiveRecord::Migration[6.0]
  def change

    change_column_null :book_loans, :created_at, true
    change_column_null :book_loans, :updated_at, true
  end
end
