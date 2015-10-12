class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render :index
  end

  def show
    @species = Species.find(params[:id])
    render :show
  end
end
