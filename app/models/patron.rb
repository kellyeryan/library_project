# frozen_string_literal: true

class Patron < ApplicationRecord
  has_many :book_loans
  has_many :books, through: :book_loans
  has_many :reviews

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, length: {
    in: 8..20,
    too_short: "Your password must be between 8 and 20 characters.",
  }

  def name
    "#{first_name} #{last_name}"
  end

  def library_card
    rand(1e8...1e9).to_i
  end
end
