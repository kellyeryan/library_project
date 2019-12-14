# frozen_string_literal: true

class Patron < ApplicationRecord
  has_many :books
  has_many :libraries, through: :books

  has_secure_password

  validates :password, length: { in: 8..16 }
  validates :library_card_number, length: { is: 10 }
end
