# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :books
  has_many :book_loans, through: :books
  has_many :patrons, through: :book_loans

  scope :north_east, -> { where(region: "NE") }
  scope :north_west, -> { where(region: "NW") }
  scope :south_east, -> { where(region: "SE") }
  scope :south_west, -> { where(region: "SW") }
end
