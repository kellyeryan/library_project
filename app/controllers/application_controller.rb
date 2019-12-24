# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :current_patron
  before_action :require_logged_in, except: %i[new create home]

  def logged_in?
    current_patron
  end

private

  def require_logged_in
    redirect_to root_path unless logged_in?
  end

  def current_patron
    @current_patron ||= Patron.find(session[:patron_id]) if session[:patron_id]
  end
  helper_method :current_patron
end
