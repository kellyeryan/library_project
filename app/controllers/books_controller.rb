# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :library

  def index
    @books = @library.books
  end

  def new
    @book = Book.new
    @author = @book.build_author
  end

  def create
    @book = Book.new(book_params)
    author = Author.find_or_create_by(author_attributes)
    if @book.update(author: author,
                    library: library,
                    catalog_number: Book.make_catalog_number)
      redirect_to library_books_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @libraries = Library.find_by(books: @book)
  end

private

  def book_params
    params.require(:book).permit(
      :title, :genre_id,
      author_attributes: %i[first_name last_name]
    )
  end

  def author_attributes
    {
      first_name: book_params[:author_attributes][:first_name],
      last_name: book_params[:author_attributes][:last_name],
    }
  end

  def library
    @library = Library.find(params[:library_id])
  end
end
