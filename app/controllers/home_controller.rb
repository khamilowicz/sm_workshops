class HomeController < ApplicationController

  before_filter :set_favorite_tracks, except: [:contact]

  def index 
    @tracks = Track.all
  end 

  def search 
    title = params[:title].to_s
    @tracks = Track.find_all(title)
    render "home/index"
  end

  def contact
    
  end

  private

  def set_favorite_tracks 
    if user_signed_in?
    @favorite_tracks = Track.find_all_by_ids(
      current_user.favourite_tracks.pluck(:track_id)
    )
    else
      @favourite_tracks = []
    end
  end 

end
