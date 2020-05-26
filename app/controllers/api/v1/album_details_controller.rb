class Api::V1::AlbumDetailsController < ApplicationController
  
  def show
    complete_album_details = Albumdetail.find_album_details(album_params)
    render json: complete_album_details
  end

  private

  def album_params
    params.permit(:artist_name, :album_name)
  end

end