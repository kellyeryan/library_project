# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :library
  belongs_to :author
  has_many :book_loans
  has_many :patrons, through: :book_loans

  accepts_nested_attributes_for :author

  def make_catalog_number
    "LB " + rand.to_s[2..5] + "." + rand.to_s[2..3]
  end
end
