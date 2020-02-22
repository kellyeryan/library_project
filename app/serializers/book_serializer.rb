# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :library, :title, :author, :genre,
             :book_status, :book_loans, :description

  def book_status
    if object.checked_out?
      "Book already checked out"
    else
      "Available"
    end
  end
end
