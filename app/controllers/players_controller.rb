class PlayersController < ApplicationController

  def index
    players = Player.all
    render :json => players
  end

  def show
    players = Player.find(params[:id])
    render :json => player.as_json({include: :teams})
  end

end