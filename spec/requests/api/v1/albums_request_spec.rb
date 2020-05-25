require 'rails_helper'
require 'pry'

describe 'Albums API' do
  it 'gets a list of Top Albums by an Artist' do

    album1 = Album.create(album_name: "Nevermind", artist_name: "Nirvana")
    album2 = Album.create(album_name: "Bleach", artist_name:  "Nirvana")
    album3 = Album.create(album_name: "Help", artist_name:  "The Beatles")

    get "/api/v1/albums?artist_name=Nirvana"

    expect(response).to be_successful
    
    albums = JSON.parse(response.body)

    expect(albums.count).to eq(2)
  end

end