class GamesController < ApplicationController
  def index
    @games = Game.all
    # render json: {message: "game" }
    web_request = HTTP.get("https://api.chess.com/pub/player/manny7100/games/2023/04").parse(:json)
    render json: web_request

    # require 'net/http'
    # username = "manny7100"
    # year = "2023"
    # month = "04"
    # url = "https://api.chess.com/pub/player/manny7100/games/2023/4/pgn"
    # uri = URI(url)
    # response = Net::HTTP.get_response(uri)
    
    # if response.code == "200"
    #   content_type = response["Content-Type"]
    #   content_disposition = response["Content-Disposition"]
    #   suggested_filename = content_disposition.match(/filename="(.+)"/)[1]
      
    #   pgn_data = response.body
      
    #   File.open(suggested_filename, "w") do |file|
    #     file.write(pgn_data)
    #   end 
      
    #   puts "PGN file downloaded and saved as #{suggested_filename}"
    # else
    #   puts "Error: #{response.code} - #{response.message}"
    # end 
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
