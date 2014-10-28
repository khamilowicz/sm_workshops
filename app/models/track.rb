class Track
  attr_accessor :title, :band, :cover, :sc_id , :stream_url

  SC_CLIENT =  "ba08463663204b0206edffa3e8051c12"

  def initialize title, sc_id, band="Metallica", cover="", stream_url=""
    @sc_id = sc_id
    @title = title 
    @band = band 
    @cover = cover 
    @stream_url = stream_url + "?client_id=#{SC_CLIENT}"
  end

  @@limit = 10


  def self.limit=limit
    @@limit = limit 
  end

  limit=40

  def self.limit
    @@limit 
  end 

  def self.find id 
    track = new_client.get("/tracks/#{id}") 
    sc_to_track(track)
  end

  def self.find_all title
    new_client.get("/tracks", q: title, limit: limit).map do |track|
      sc_to_track(track)
    end
  end

  def self.new_client
    Soundcloud.new(client_id: SC_CLIENT) 
  end

  def self.sc_to_track track
      Track.new(track.title, 
                track.id,
                track.user.username, 
                track.artwork_url,
                track.stream_url
               ) 
  end

  def to_param
    @title.parameterize
  end

  def self.all
    []
  end
end
