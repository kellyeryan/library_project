# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :patron
  belongs_to :book
end
