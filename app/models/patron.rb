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

  def not_pa_resident
    "If you don't live in Pennsylvania, you can't get a library card. Sorry!"
  end
end
