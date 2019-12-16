# frozen_string_literal: true

class Patron < ApplicationRecord
  has_many :book_loans
  has_many :books, through: :book_loans

  has_secure_password

  validates :password, length: { in: 8..16 }
  validates :library_card_number, length: { is: 10 }

  def name
   "#{first_name} " + "#{last_name}"
  end
end
