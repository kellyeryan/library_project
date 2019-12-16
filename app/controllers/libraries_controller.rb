# frozen_string_literal: true

class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
  end

  def new
    @library = Library.new
    @library.books.build
  end

  def show
    @library = Library.find(params[:id])
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
