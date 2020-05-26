class Artist < ApplicationRecord

  def self.find_artist_details(artist_name)
    conn = Faraday.new(:url => 'http://ws.audioscrobbler.com/2.0/')
    response = conn.get do |req|                     
      req.params['method'] = "artist.getinfo"
      req.params['artist'] = "#{artist_name}"
      req.params['api_key'] = "#{ENV["LASTFM_API_KEY"]}"
      req.params['format'] = "json"
    end

    raw_artist_details = JSON.parse(response.body)

    artist_details = 
      {
        :artist_name => raw_artist_details["artist"]["name"],
        :artist_mbid => raw_artist_details["artist"]["mbid"],
        :artist_ontour => raw_artist_details["artist"]["ontour"],
        :number_of_listeners => raw_artist_details["artist"]["stats"]["listeners"],
        :playcount => raw_artist_details["artist"]["stats"]["playcount"]
      }

   end
end
