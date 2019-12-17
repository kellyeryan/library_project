# frozen_string_literal: true

class SessionsController < ActionController::Base
  def new; end

  def create
    patron = Patron.find_by(library_card_number: library_card_number)
    if patron&.authenticate(params[:patron][:password])
      session[:patron_id] = patron.id
      redirect_to patron_path(patron), notice: "Success! You've been logged in!"
    else
      flash.now[:notice] = "We're sorry,
        but your library card number or password is invalid. Please try again."
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

private

  def library_card_number
    params[:patron][:library_card_number]
  end
end
