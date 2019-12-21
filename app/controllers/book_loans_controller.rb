# frozen_string_literal: true

class BookLoansController < ApplicationController
  def index
    @book_loans = BookLoan.all
  end

  def new
    @book_loan = BookLoan.new
  end

  def create
    BookLoan.new(book_loan_params)
  end

private
  def book_loan_params
    params.require(:book_loan).permit(:book_id, :patron_id, :checked_out)
  end
end
