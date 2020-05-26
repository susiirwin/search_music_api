class ArtistSerializer < ActiveModel::Serializer
  attributes :artist_mbid, :artist_name, :artist_ontour, :number_of_listeners, :playcount
end