require 'rails_helper'
require 'pry'

describe 'Album Details API' do
  it 'gets the details of an Album by an Artist' do
    json_response = File.read('spec/fixtures/album_details.json')
    stub_request(:get, "http://ws.audioscrobbler.com/2.0/?api_key=#{ENV["LASTFM_API_KEY"]}&artist=Nirvana&album=Bleach&format=json&method=album.getinfo").
      to_return(status: 200, body: json_response, headers: {})

    get "/api/v1/albumdetails?artist_name=Nirvana&album_name=Bleach"
    
    expect(response).to be_successful
    binding.pry
    
    album_details = JSON.parse(response.body)

    expect(false).to eq(true)
  end
end