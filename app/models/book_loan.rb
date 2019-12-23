# frozen_string_literal: true

class BookLoan < ApplicationRecord
  belongs_to :book
  belongs_to :patron

  scope :checked_out, -> { where(checked_out: true) }

  def self.checked_out?
    find_by(checked_out: true).present?
  end
end
