class Api::V1::AlbumsController < ApplicationController
  
  def index
    top_albums_by_artist = Album.find_top_albums_for_artist(params[:artist_name])
    render json: top_albums_by_artist
  end

end