class Api::V1::AlbumDetailsController < ApplicationController
  
  def show
    album_details = Albumdetail.find_album_details(params[:artist_name])
    render json: album_details
  end

end