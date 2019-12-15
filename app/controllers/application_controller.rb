# frozen_string_literal: true

class ApplicationController < ActionController::Base

private

  def current_patron
    @current_patron ||= Patron.find(session[:patron_id]) if session[:patron_id]
  end
  helper_method :current_patron
end
