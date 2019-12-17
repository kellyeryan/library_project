# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books

  validates :last_name, uniqueness: true
  validates :first_name, uniqueness: true

  def author_name
    "#{last_name}, #{first_name}"
  end
end
