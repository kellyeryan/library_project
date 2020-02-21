# frozen_string_literal: true

class BookLoansController < ApplicationController
  def create
    @book_loan = BookLoan.create(
      book_id: params[:book_id],
      patron_id: session[:patron_id]
    )
      redirect_to("http://localhost:3000#{patron_path(@book_loan.patron)}")
  end

  def update
    @book_loan = BookLoan.find(params[:id])
    @book_loan.update(checked_out: false)
    redirect_to patron_path(@book_loan.patron)
  end
end
