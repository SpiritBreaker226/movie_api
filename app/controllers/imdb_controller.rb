class ImdbController < ApplicationController
  def index
  	@movies = Imdb.all
  end
end
