# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :library
  has_many :book_loans
  has_many :patrons, through: :book_loans
end
