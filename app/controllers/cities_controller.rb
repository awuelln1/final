class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    # do something with params[:id]
    @city = City.find_by(id: params["id"])

  end

  def new
    @city = City.new
  end


  def create
    city_params = params.require(:city).permit(:name)
    City.create(city_params)
    redirect_to city_path
  end


  def edit
    @city = City.find_by(id: params["id"])
  end


  def update
    city_params = params.require(:city).permit(:name)
    @city = City.find_by(id: params["id"])
    @city.update(city_params)
    redirect_to city_path
  end

  def destroy
    @city = City.find_by(id: params["id"])
    @city.destroy
    redirect_to city_path
  end
end