class TracksController < ApplicationController
  def track 
    id = params[:id]
    @track = Track.find(id)
  end 

  def favorite 
    if user_signed_in?
      current_user.favourite_tracks.create(track_id: params[:id])

    @favorite_tracks = Track.find_all_by_ids(
      current_user.favourite_tracks.pluck(:track_id)
    )
    else 
      @favourite_tracks = []
    end
  end
end
