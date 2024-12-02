class ActorRolesController < ApplicationController

  def new
    @actor_role = ActorRole.new
  end
  def create
  end

  private 

  def actor_roles_params
  end
end