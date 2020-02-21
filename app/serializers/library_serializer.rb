# frozen_string_literal: true

class LibrarySerializer < ActiveModel::Serializer
  attributes :id, :name, :street_address, :city, :state, :region
end
