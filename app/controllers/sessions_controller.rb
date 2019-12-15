# frozen_string_literal: true

class SessionsController < ActionController::Base
  def new; end

  def create
    if @patron = Patron.find_by(name: params[:patron][:name])
      session[:patron_id] = @patron.id
      redirect_to patron_path(@patron)
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
