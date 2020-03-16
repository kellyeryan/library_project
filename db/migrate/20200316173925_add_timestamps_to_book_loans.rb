class AddTimestampsToBookLoans < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :book_loans, null: true
    long_ago = DateTime.new(2020, 3, 3)
    BookLoan.update_all(created_at: long_ago, updated_at: long_ago)
    change_column_null :book_loans, :created_at, false
    change_column_null :book_loans, :updated_at, false
  end
end
