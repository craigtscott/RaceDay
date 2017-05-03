class Api::RacesController < ApplicationController
  def index
    @races = Race.all.where(team_id: current_user.id)
    render :index
  end
end
