class Album < ApplicationRecord
  
  def self.find_top_albums_for_artist(artist_name)
    conn = Faraday.new(:url => 'http://ws.audioscrobbler.com/2.0/')
    response = conn.get do |req|                     
      req.params['method'] = "artist.gettopalbums"
      req.params['artist'] = "#{artist_name}"
      req.params['api_key'] = "#{ENV["LASTFM_API_KEY"]}"
      req.params['format'] = "json"
    end
    parsed = JSON.parse(response.body)
  end    

end