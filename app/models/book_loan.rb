# frozen_string_literal: true

class BookLoan < ApplicationRecord
  belongs_to :book
  belongs_to :patron
end
