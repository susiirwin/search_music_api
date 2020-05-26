require 'rails_helper'
require 'pry'

describe 'Albums API' do
  it 'gets a list of Top Albums by an Artist' do
    json_response = File.read('spec/fixtures/top_albums_by_artist.json')
    stub_request(:get, "http://ws.audioscrobbler.com/2.0/?api_key=#{ENV["LASTFM_API_KEY"]}&artist=Nirvana&format=json&method=artist.gettopalbums").
         to_return(status: 200, body: json_response, headers: {})

    get "/api/v1/albums?artist_name=Nirvana"

    expect(response).to be_successful
    
    albums = JSON.parse(response.body)

    expect(albums.count).to eq(2)
  end
  
end