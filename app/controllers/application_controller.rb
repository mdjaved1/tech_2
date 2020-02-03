class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include HTTParty
  base_uri 'https://api.themoviedb.org'

  require 'addressable/uri'
  require 'addressable/template'
end
