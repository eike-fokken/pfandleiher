class CookingGroupsController < ApplicationController

  def index
    @cooking_groups = CookingGroup.all
  end

  def show
    @cooking_group = CookingGroup.find(params[:id])
  end

end
