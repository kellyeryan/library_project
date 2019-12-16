# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :books
  has_many :book_loans, through: :books
  has_many :patrons, through: :book_loans

  accepts_nested_attributes_for :books
end
