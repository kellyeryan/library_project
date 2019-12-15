# frozen_string_literal: true

class PatronsController < ApplicationController
  def show
    @patron = Patron.find(params[:id])
  end
end
