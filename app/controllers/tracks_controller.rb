class TracksController < ApplicationController
  def track 
    id = params[:id]
    @track = Track.find(id)
  end 
end
