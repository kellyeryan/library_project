# frozen_string_literal: true

class BookLoansController < ApplicationController
  # def index
  #   @book_loans = BookLoan.all
  # end

  def create
    @book_loan = BookLoan.create(book_id: params[:book_id], patron_id: session[:patron_id])
    redirect_to book_loan_path(@book_loan)
  end

  def show
    @book_loan = BookLoan.find(params[:id])
  end
end
