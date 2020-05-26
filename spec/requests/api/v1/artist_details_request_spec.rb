require 'rails_helper'
require 'pry'

describe 'Artist Details API' do
  it 'gets the details of an Artist' do
    json_response = File.read('spec/fixtures/artist_details.json')
    stub_request(:get, "http://ws.audioscrobbler.com/2.0/?api_key=#{ENV["LASTFM_API_KEY"]}&artist=Nirvana&format=json&method=artist.getinfo").
      to_return(status: 200, body: json_response, headers: {})

    get "/api/v1/artistdetails?artist_name=Nirvana"
    
    expect(response).to be_successful
    
    artist_details = JSON.parse(response.body)

    expect(artist_details["artist_name"]).to eq("Nirvana")
    expect(artist_details["artist_mbid"]).to eq("9282c8b4-ca0b-4c6b-b7e3-4f7762dfc4d6")

  end
end