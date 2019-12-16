# frozen_string_literal: true

class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

private

  def book_params
    params.require(:book).permit(
      :title,
      :catalog_number
    )
  end
end
