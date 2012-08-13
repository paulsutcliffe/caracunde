class CreateIntegrantes < ActiveRecord::Migration
  def self.up
    create_table :integrantes do |t|
      t.string :nome
      t.text :descricao
      t.string :pais
      t.string :slug

      t.timestamps
    end
    add_index :integrantes, :slug, :unique => true
  end

  def self.down
    drop_table :integrantes
  end
end
