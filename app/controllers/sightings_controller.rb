class SightingsController < ApplicationController

  def create
    @sightings = Sighting.all
    @critter = Critter.find(params[:id])
    @sighting = @critter.sightings.new(params[:sighting])
    @sighting.save
    render('critters/show.html.erb')
  end

  def show
    @sightings = Sighting.all
    @sighting = Sighting.find(params[:id])
    render('sightings/show.html.erb')
  end

  def update
    @sightings = Sighting.all
    @sighting = Sighting.find(params[:id])
    @sighting.update(params[:sighting])
    render('sightings/show.html.erb')
  end


end
