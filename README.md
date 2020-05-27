# README

[`Search_Music_Api`](https://obscure-citadel-19523.herokuapp.com/api/v1/) is a RESTFUL JSON Rails API which models artists and albums. This API consumes the [LastFM API](https://www.last.fm/api/) and hits the following LastFM endpoints:

    artist.getInfo
    artist.getTopAlbums
    album.getInfo


## To set up the Search Music API application:

First, clone the repository. Using SSH:
```
git clone git@github.com:susiirwin/search_music_api.git
```
Using HTTPS:
```
git clone https://github.com/susiirwin/search_music_api.git
```

Then run the following commands to set up the application:
```
cd search_music_api
bundle install
rails db:create db:migrate
rails s
```
To use the app, open a browser window to `http://localhost:3000/api/v1/`.


## API Details:
* Ruby version: Ruby 2.6.5p114

* Rails version: Rails 6.0.1.3

* Ruby Gems required
  - [Rspec-Rails](https://github.com/rspec/rspec-rails)
  - [Database Cleaner](https://github.com/DatabaseCleaner/database_cleaner)
  - [Active Model Serializers](https://github.com/rails-api/active_model_serializers)
  - [Faraday](https://github.com/lostisland/faraday)
  - [Figaro](https://github.com/laserlemon/figaro)
  - [WebMocks](https://github.com/bblimke/webmock)


* Configuration
  - In a terminal window, run `bundle install`.


* Database Details and Initialization
  - The Search_Music_API uses postgresql.
  - Create and migrate the database by running `rails db:create db:migrate`.


## Testing
* How to run the test suite
  - In a terminal window, run `rspec` to run the full test suite.

## Endpoints for the API
The live Heroku site is located at: https://obscure-citadel-19523.herokuapp.com.

To search for an artist, album, or an artist's album, enter the word or words into the URL string. Spaces are acceptable.

* To get an Artist's Top Albums:

  Live Example: https://obscure-citadel-19523.herokuapp.com/api/v1/artistdetails?artist_name=The%20soup%20dragons

      /api/v1/albums?artist_name=[artist name]

* To get information about an Artist:

    Live Example: https://obscure-citadel-19523.herokuapp.com/api/v1/artistdetails?artist_name=the%20beatles

      /api/v1/artistdetails?artist_name=[artist name]

* To get information about an Album by an Artist:

  Live Example: https://obscure-citadel-19523.herokuapp.com/api/v1/albumdetails?artist_name=Toad%20the%20wet%20sprocket&album_name=fear

      /api/v1/albumdetails?artist_name=[artist name]&album_name=[album name]