class ImdbController < ApplicationController
  def index
  	@movies = Imdb.find_by_title(params)
  end

  def show
  	@movie = Imdb.find(params[:id])
  end
end
