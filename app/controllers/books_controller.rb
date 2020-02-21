# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :library
  skip_before_action :verify_authenticity_token

  def index
    @books = @library.books
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @books.to_json(include: [ :library, :genre, :author, :book_loans, :description ]) }
    end
  end

  def new
    @book = Book.new
    @author = @book.build_author
  end

  def create
    respond_to do |format|
      format.json do
        @book = Book.new(book_params)
        author = Author.find_or_create_by(author_attributes)
        if @book.update(author: author,
                        library: library,
                        catalog_number: Book.make_catalog_number)
          render json: @book, status: 201
        else
          render json: {}, status: 500
        end
      end
      format.js {}
    end
  end

  def show
    @book = Book.find(params[:id])
    @libraries = Library.find_by(books: @book)
    render json: @book.to_json(include: [ :library, :genre, :author, :book_loans ])
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
