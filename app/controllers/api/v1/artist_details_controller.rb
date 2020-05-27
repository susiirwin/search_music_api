class Api::V1::ArtistDetailsController < ApplicationController

  def show
    artist_details = Artist.find_artist_details(params[:artist_name])
    render json: artist_details, status: 200
  end
end