class LocationsController < ApplicationController

 def index
    @location = Location.all
 end

 def show
  @location = location.find_by(id: params[:id])
 end
end 






end


