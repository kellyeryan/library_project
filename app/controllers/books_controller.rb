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
    @book = Book.new(book_params)
    binding.pry
      @book.update(
        library_id: @library.id,
        catalog_number: @book.make_catalog_number
      )
    redirect_to library_books_path
  end

  def show
    @book = Book.find(params[:id])
  end

private

  def book_params
    params.require(:book).permit(:title,
      :author_attributes => [:first_name, :last_name])
  end

  def library
    @library = Library.find(params[:library_id])
  end
end
