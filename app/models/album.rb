class Album < ApplicationRecord

  def self.find_top_albums_for_artist(artist_name)
    conn = Faraday.new(:url => 'http://ws.audioscrobbler.com/2.0/')
    response = conn.get do |req|                     
      req.params['method'] = "artist.gettopalbums"
      req.params['artist'] = "#{artist_name}"
      req.params['api_key'] = "#{ENV["LASTFM_API_KEY"]}"
      req.params['format'] = "json"
    end
    raw_top_albums = JSON.parse(response.body)
    
    top_albums = []
    raw_top_albums["topalbums"]["album"].map do |top_album|
      album = Album.new
      album.album_name = top_album["name"]
      album.artist_name = top_album["artist"]["name"]
      album.album_playcount = top_album["playcount"]
      album.album_mbid = top_album["mbid"]
      top_albums << album
    end
    top_albums
  end
end