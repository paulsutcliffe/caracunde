class CreateAlbums < ActiveRecord::Migration
  def self.up
    create_table :albums do |t|
      t.string :nome
      t.string :slug

      t.timestamps
    end
    add_index :albums, :slug, :unique => true
  end

  def self.down
    drop_table :albums
  end
end
