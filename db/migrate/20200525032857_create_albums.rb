class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.string :artist_name
      t.integer :album_playcount
      t.string :album_mbid

      t.timestamps
    end
  end
end
