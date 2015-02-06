class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    # do something with params[:id]
    @city = City.find_by(id: params["id"])

  end

  def new
    
  end


  def create
    
  end


  def edit
    
  end


  def update
    
  end

  def destroy
    
  end
end