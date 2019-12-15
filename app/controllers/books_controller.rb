# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

private
  def book_params
    params.require(:book).permit(
      :title,
      :author_first_name,
      :author_last_name,
      :catalog_number
    )
  end
end
