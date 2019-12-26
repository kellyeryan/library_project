# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books

  validates :first_name, :last_name, presence: true

  def author_name
    "#{last_name}, #{first_name}"
  end
end
