class ActorsController < ApplicationController

  def new
    @actor = Actor.new
  end
  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to actors_path
    end
  end
  def show
    @actor = Actor.find(params[:id])
  end
  def index
    @actors = Actor.all
  end

  private 

  def actor_params
    params.require(:actor).permit(:name, :nationality, :birth)
  end
end