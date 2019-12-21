# frozen_string_literal: true

class BookLoansController < ApplicationController
  def index
    @book_loans = BookLoan.all
  end

  def new
    @book_loan = BookLoan.new
    @book_loan.patron_id =
  end

  def create
    BookLoan.new(book_loan_params)
  end

  def show
    @book_loan = BookLoan.find(params[:id])
  end

private
  def book_loan_params
    params.require(:book_loan).permit(:book_id, :patron_id, :checked_out)
  end
end
