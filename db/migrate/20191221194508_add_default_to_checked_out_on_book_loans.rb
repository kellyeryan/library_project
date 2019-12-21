# frozen_string_literal: true

class AddDefaultToCheckedOutOnBookLoans < ActiveRecord::Migration[6.0]
  def change
    change_column_default :book_loans, :checked_out, to: true
  end
end
