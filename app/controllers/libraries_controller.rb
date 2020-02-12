# frozen_string_literal: true

class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @library.to_json }
    end
  end

private

  def library_params
    params.require(:library).permit(
      :name,
      :street_address,
      :city,
      :state
    )
  end
end
