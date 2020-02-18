# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :library, :title, :author_full_name, :genre
end
