# frozen_string_literal: true

class BookLoansController < ApplicationController
  def create
    @book_loan = BookLoan.create(
      book_id: params[:book_id],
      patron_id: session[:patron_id]
    )
    redirect_to book_loan_path(@book_loan)
  end

  def show
    @book_loan = BookLoan.find(params[:id])
  end

  def update
    @book_loan = BookLoan.find(params[:id])
    @book_loan.update(checked_out: false)
    redirect_to library_books_path(@book_loan.book.library_id)
  end
end
