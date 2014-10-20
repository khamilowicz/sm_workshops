class TracksController < ApplicationController
  def track
    @track = Track.all.find do |track|
      track.to_param == params[:param_title] 
    end
  end 
end
