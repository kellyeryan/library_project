# frozen_string_literal: true

class Library_Catalog_Serializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :library, :title, :author, :genre
end
