class WelcomeController < ApplicationController
  #Contoller for welcome page.
  def initialize
    @popular 
  end

  def index
    response = HTTParty.get("https://api.themoviedb.org/3/tv/popular?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")

    @popular = JSON.parse(response.body, symbolize_names: true) #symbolize_names method allows you to access keys as symbols
  end
  
end
