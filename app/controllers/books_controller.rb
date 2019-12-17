# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :library

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
    @author = @book.build_author
  end

  def create
    book = Book.new(book_params)
    author = Author.find_or_create_by(
      last_name: book.author.last_name,
      first_name: book.author.first_name
    )
    book.update(
      author: author,
      library: library,
      catalog_number: book.make_catalog_number
    )
    redirect_to library_books_path
  end

  def show
    @book = Book.find(params[:id])
  end

private

  def book_params
    params.require(:book).permit(
      :title,
      author_attributes: %i[first_name last_name]
    )
  end

  def library
    @library = Library.find(params[:library_id])
  end
end
