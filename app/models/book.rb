# frozen_string_literal: true

class Book < ApplicationRecord
  belongs_to :patron
  belongs_to :library
end
