class TracksController < ApplicationController
  def track 
    id = params[:id]
    @track = Track.find(id)
  end 

  def favorite 
   FavouriteTrack.create(track_id: params[:id])
  @favorite_tracks = Track.find_all_by_ids(
      FavouriteTrack.pluck(:track_id)
    )
  end
end
