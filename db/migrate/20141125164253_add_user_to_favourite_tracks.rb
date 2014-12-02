class AddUserToFavouriteTracks < ActiveRecord::Migration
  def change
    add_reference :favourite_tracks, :user, index: true
  end
end
