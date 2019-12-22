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

  def destroy
    @book_loan = BookLoan.find(params[:id])
    @book_loan.destroy

    redirect_to book_loans_path
  end
end
