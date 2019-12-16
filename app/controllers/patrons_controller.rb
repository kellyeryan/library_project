# frozen_string_literal: true

class PatronsController < ApplicationController
  def show
    @patron = Patron.find(params[:id])
  end

  def new; end

  def create
    patron = Patron.new(patron_params)
    binding.pry
    if patron.save
      session[:patron_id] = patron.id
      redirect_to patron_path(patron)
    else
      redirect_to new_patron_path
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
