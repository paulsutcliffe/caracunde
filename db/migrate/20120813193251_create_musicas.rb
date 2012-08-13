class CreateMusicas < ActiveRecord::Migration
  def self.up
    create_table :musicas do |t|
      t.text :soundcloud

      t.timestamps
    end
  end

  def self.down
    drop_table :musicas
  end
end
