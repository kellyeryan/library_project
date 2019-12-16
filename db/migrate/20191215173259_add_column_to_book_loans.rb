# frozen_string_literal: true

class AddColumnToBookLoans < ActiveRecord::Migration[6.0]
  def change
    add_column :book_loans, :returned, :boolean
  end
end
