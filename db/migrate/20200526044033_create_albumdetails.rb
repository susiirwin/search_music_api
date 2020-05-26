class CreateAlbumdetails < ActiveRecord::Migration[6.0]
  def change
    create_table :albumdetails do |t|
      t.string :album_name
      t.string :artist_name
      t.string :album_mbid
      t.string :listeners
      t.string :playcount

      t.timestamps
    end
  end
end
