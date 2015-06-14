class ImdbController < ApplicationController
  def index
  	@movies = params.length > 2 ? Imdb.find_by_title(params) : Imdb.top_movies
  end

  def show
  	@movie = Imdb.find(params[:id])
  end
end
