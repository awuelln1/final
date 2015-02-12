class AttractionsController < ApplicationController

  def index
    @attractions = Attraction.all
  end

  def show
      #whatever
  end

  def new
    @attraction = Attraction.new
  end

    # Strong parameters, refer to action controller overview when doing create and update
  def create
    attraction_params = params.require(:attraction).permit(:attraction_name)
    Attraction.create(attraction_params)
    redirect_to attractions_path
  end

  def edit
    @attraction = Attraction.find_by(id: params["id"])
    # Existing attraction, so we want it to read it from the database
  end

  def update
    attraction_params = params.require(:attraction).permit(:attraction_name)
    @attraction = Attraction.find_by(id: params["id"])
    @attraction.update(attraction_params)
    redirect_to attractions_path
  end

  def destroy
    @attraction = Attraction.find_by(id: params["id"])
    @attraction.destroy
    redirect_to attractions_path
  end


end