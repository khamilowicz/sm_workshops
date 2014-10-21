class HomeController < ApplicationController

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

end
