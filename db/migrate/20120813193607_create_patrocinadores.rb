class CreatePatrocinadores < ActiveRecord::Migration
  def self.up
    create_table :patrocinadores do |t|
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :patrocinadores
  end
end
