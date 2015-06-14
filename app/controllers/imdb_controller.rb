class ImdbController < ApplicationController
  def index
  	@movies = Imdb.all
  end

  def show
  	@movie = Imdb.find(params[:id])
  end
end
