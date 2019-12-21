# frozen_string_literal: true

class BookLoan < ApplicationRecord
  belongs_to :book
  belongs_to :patron

  def self.checked_out?
    find_by(checked_out: true).present?
  end
end
