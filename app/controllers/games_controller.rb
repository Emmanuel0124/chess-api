class GamesController < ApplicationController
  def index
    @games = Game.all
    # render json: {message: "game" }
    web_request = HTTP.get("https://api.chess.com/pub/player/manny7100/games/2023/04").parse(:json)
    render json: web_request
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
  def show 
    @game = Game.find_by(id: params[:id])
    render :show 
  end 
  
end
