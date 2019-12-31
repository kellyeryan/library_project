# frozen_string_literal: true

class RemoveSummaryFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :summary, :text
  end
end
