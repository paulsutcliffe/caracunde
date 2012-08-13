class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :titulo
      t.text :conteudo
      t.date :data
      t.string :slug

      t.timestamps
    end
    add_index :posts, :slug, :unique => true
  end

  def self.down
    drop_table :posts
  end
end
