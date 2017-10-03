class ManagersController < ApplicationController
  
  def index
    managers = Manager.where({player: params[:player_id]})
    render :json => managers.as_json({include: :sponsor})
  end

  def create
    manager = Manager.create({name: params[:name], firm_name: params[:firm_name], player_id: params[:player_id], sponsor_id: params[:sponsor_id]})
    render(json: manager)
  end

end