# frozen_string_literal: true

class Library < ApplicationRecord
  has_many :books
  has_many :patrons, through: :books
end
