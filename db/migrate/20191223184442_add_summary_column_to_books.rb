# frozen_string_literal: true

class AddSummaryColumnToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :summary, :text
  end
end
