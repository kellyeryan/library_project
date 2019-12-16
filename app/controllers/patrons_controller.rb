# frozen_string_literal: true

class PatronsController < ApplicationController
  def show
    @patron = Patron.find(params[:id])
  end

  def new; end

  def create

  end
end
