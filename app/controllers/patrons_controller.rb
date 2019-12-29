# frozen_string_literal: true

class PatronsController < ApplicationController
  def show
    @patron = Patron.find(params[:id])
    @book_loans = BookLoan.checked_out.where(patron: @patron)
  end

  def new
    @patron = Patron.new
  end

  def create
    @patron = Patron.new(patron_params)
    if @patron.save
      session[:patron_id] = @patron.id
      @patron.update(library_card_number: @patron.library_card)
      redirect_to patron_path(@patron)
    else
      render new_patron_path
    end
  end

private

  def patron_params
    params.require(:patron).permit(
      :first_name,
      :last_name,
      :password,
      :password_confirmation,
      :pa_resident
    )
  end
end
