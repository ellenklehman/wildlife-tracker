class CrittersController < ApplicationController

  def index
    @critters = Critter.all
    @sightings = Sighting.all
    render('critters/index.html.erb')
  end

  def create
    @critters = Critter.all
    @critter = Critter.new(params[:critter])
    @critter.save
    render('critters/index.html.erb')
  end

  def show
    @critters = Critter.all
    @critter = Critter.find(params[:id])
    render('critters/show.html.erb')
  end

  def update
    @critters = Critter.all
    @critter = Critter.find(params[:id])
    @critter.update(params[:critter])
    render('critters/index.html.erb')
  end

  def destroy
    @critters = Critter.all
    @critter = Critter.find(params[:id])
    @critter.destroy
    render('critters/index.html.erb')
  end
end
