# frozen_string_literal: true

class Patron < ApplicationRecord
  has_many :book_loans
  has_many :books, through: :book_loans

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end

  def library_card
    rand(1e9...1e10).to_i
  end
end
