# frozen_string_literal: true

class BooksController < ApplicationController
  before_action :library, except: :create
  skip_before_action :verify_authenticity_token

  def index
    @books = @library.books
    respond_to do |format|
      format.html { render :index }
      format.json do
        render json: @books.to_json(
          include: %i[library genre author book_loans], methods: :description
        )
      end
    end
  end

  def new
    @book = Book.new
    @author = @book.build_author
  end

  def create # rubocop:disable Metrics/MethodLength
    respond_to do |format|
      format.json do
        @book = Book.new(book_params)
        author = Author.find_or_create_by(author_attributes)
        if @book.update(author: author, library: library,
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
    respond_to do |format|
      format.html { render :show }
      format.json do
        render json: @book.to_json(
          include: %i[library genre author book_loans], methods: :description
        )
      end
    end
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
