# frozen_string_literal: true

class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :last_name, :first_name
end
