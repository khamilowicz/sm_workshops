class CreateFavoriteTracks < ActiveRecord::Migration
  def change
    create_table :favourite_tracks do |t|
      t.string :track_id
    end
  end
end
