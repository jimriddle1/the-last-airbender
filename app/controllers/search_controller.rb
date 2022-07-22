# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @characters = CharacterFacade.find_characters(params[:nation])
    # binding.pry
  end
end
