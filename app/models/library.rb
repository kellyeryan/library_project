# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :books
  has_many :book_loans
  has_many :patrons, through: :book_loans
end
