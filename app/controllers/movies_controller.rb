class MoviesController < ApplicationController

  require 'themoviedb-api'
  Tmdb::Api.key(ENV['Tmdb_API_KEY'])
  Tmdb::Api.language("ja")

  
  def search
  end

  def show
  end
end
