class Track
  attr_accessor :title, :band, :cover 

  def initialize title, band="Metallica", cover=""
    @title = title 
    @band = band 
    @cover = cover 
  end

  def to_param
    @title.parameterize
  end

  def self.all
    [
      Track.new("Enter Sandman", "Metallica", "http://www.earlytorise.com/wp-content/uploads/2009/10/metallica-enter-sandman-dirty-funker-remixs.jpg"),
      Track.new("Lol", "Blog 27"),
      Track.new("Hello"),
      Track.new("Enter Sandman", "Iron"),
    ] 
  end
end
