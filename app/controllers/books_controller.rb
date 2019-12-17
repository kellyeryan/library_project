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
    @author = @book.author
    Author.find_or_create_by(last_name: @author.last_name, first_name: @author.first_name)
    Book.find_or_create_by(title: @book.title)
      @book.update(
        library_id: @library.id,
        catalog_number: @book.make_catalog_number
        )
      binding.pry
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
