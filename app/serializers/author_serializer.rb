# frozen_string_literal: true

class AuthorSerializer < ActiveModel::Serializer
  attributes :author_full_name

  def author_full_name
    "#{object.last_name}, #{object.first_name}"
  end
end
