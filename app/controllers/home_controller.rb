class HomeController < ApplicationController

  def index 
    @tracks = Track.all
  end 

  def search
    title = Regexp.new(params[:title].downcase)
    band = Regexp.new(params[:band].downcase)

    @tracks = Track.all.select do |track| 
      if params[:band].present? 
        track.band.downcase =~ band
      else
        track.title.downcase =~ title
      end
    end
    render "home/index"
  end

  def contact
    
  end
end
