class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end 
  def create 
    @game = Game.create(
      winner: params[:winner],
      ending: params[:ending],
      pgn: params[:pgn],
      pgn_image: params[:pgn_image]
    )
    render :show

  end 
end
