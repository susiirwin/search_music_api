class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_mbid
      t.boolean :artist_ontour
      t.string :number_of_listeners
      t.string :playcount

      t.timestamps
    end
  end
end
