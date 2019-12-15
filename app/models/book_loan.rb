# frozen_string_literal: true

class BookLoan < ApplicationRecord
  belongs_to :library
  belongs_to :patron
end
