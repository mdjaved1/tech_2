class TvShowsController < ApplicationController
  def initialize
    @results
    @show 
  end

  #To render search results page
  def results
    query = params[:q] #Query variable is the string a user enters in the search bar.
    url = Addressable::URI.parse('https://api.themoviedb.org/3/search/tv?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US&')
    url.query_values = url.query_values.merge(query: query)
    response = HTTParty.get(url)

    @results = JSON.parse(response.body, symbolize_names: true) 
  end 

  #To render individual TV show view page
  def show
      
    id = params.keys[0] 
    
    url = Addressable::URI.parse("https://api.themoviedb.org/3/tv/#{id}?api_key=fb6a1d3f38c3d97f67df6d141f936f29&language=en-US")
    response = HTTParty.get(url)

    @show = JSON.parse(response.body, symbolize_names: true) 
  end
end
