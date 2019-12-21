# frozen_string_literal: true

class ChangeReturnedToCheckedOutOnBookLoans < ActiveRecord::Migration[6.0]
  def change
    rename_column :book_loans, :returned, :checked_out
  end
end
