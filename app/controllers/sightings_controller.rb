class SightingsController < ApplicationController
  def new
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new
  end

  def create
    @species = Species.find(params[:species_id])
    @sighting = @species.sightings.new(sighting_params)
    if @sighting.save
      redirect_to species_path(@sighting.species)
    else
      render :new
    end
  end


  private
  def sighting_params
    params.require(:sighting).permit(:animal, :date, :latitude, :longitude)
  end
end
