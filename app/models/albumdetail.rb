class Albumdetail < ApplicationRecord

  def self.find_album_details(artist_name, album_name)
    conn = Faraday.new(:url => 'http://ws.audioscrobbler.com/2.0/')
    response = conn.get do |req|                     
      req.params['method'] = "album.getinfo"
      req.params['artist'] = "#{artist_name}"
      req.params['album'] = "#{album_name}"
      req.params['api_key'] = "#{ENV["LASTFM_API_KEY"]}"
      req.params['format'] = "json"
    end

    raw_album_details = JSON.parse(response.body)

    album_details = []
    binding.pry
    # raw_album_details
  end
end
