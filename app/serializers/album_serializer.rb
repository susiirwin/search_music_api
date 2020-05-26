class AlbumSerializer < ActiveModel::Serializer
  attributes :album_mbid, :album_name, :artist_name, :album_playcount
end
