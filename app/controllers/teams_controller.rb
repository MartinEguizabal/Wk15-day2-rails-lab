class TeamsController < ApplicationController

  def index
    teams = Team.all
    render :json => teams
  end

  def show
    teams = Team.find(params[:id])
    render :json => teams
  end

end