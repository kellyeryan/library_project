# frozen_string_literal: true

class Book < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :library
  belongs_to :author
  has_many :book_loans
  has_many :patrons, through: :book_loans
  belongs_to :genre
  has_many :reviews

  accepts_nested_attributes_for :author

  validates :title, presence: true
  validates_associated :author

  def checked_out?
    book_loans.checked_out?
  end

  def self.make_catalog_number
    rand.to_s[2..5] + "." + rand.to_s[2..3]
  end
end
