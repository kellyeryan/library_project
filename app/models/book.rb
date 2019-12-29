# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :library
  belongs_to :author
  has_many :book_loans
  has_many :patrons, through: :book_loans

  accepts_nested_attributes_for :author

  validates_associated :author

  def checked_out?
    book_loans.checked_out?
  end

  def make_catalog_number
    rand.to_s[2..5] + "." + rand.to_s[2..3]
  end

  def choose_genre
    genres = ["sci-fi", "fantasy", "historical fiction", "biography", "poetry", "mystery", "classic", "horror", "romance", "short story", "non-fiction"]
    genres.all.sample
  end
end
