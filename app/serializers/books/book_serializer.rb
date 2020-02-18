# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  belongs_to :author
  attributes :id, :library, :title, :author, :genre
end

