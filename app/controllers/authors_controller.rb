# frozen_string_literal: true

class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end
end
