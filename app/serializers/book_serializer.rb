# frozen_string_literal: true

class BookSerializer < ActiveModel::Serializer
  attributes :id, :library, :title, :author, :genre, :bookStatus, :book_loans, :description

  def bookStatus
    if object.checked_out?
      "Book already checked out"
    else
      "Available"
    end
  end
end
