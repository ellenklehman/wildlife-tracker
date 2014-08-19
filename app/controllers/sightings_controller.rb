class SightingsController < ApplicationController

  def index
    @critters = Critter.all
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

  def create
    @sightings = Sighting.all
    @critter = Critter.find(params[:id])
    @sighting = @critter.sightings.new(params[:sighting])
    @sighting.save
    render('critters/show.html.erb')
  end

  def report
    @sightings = Sighting.all
    @report = Sighting.date_range(params[:sighting])
    render('sightings/index.html.erb')
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

  def destroy
    @critters = Critter.all

    @sightings = Sighting.all
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('critters/index.html.erb')
  end
end
