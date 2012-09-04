class CreateInformacoes < ActiveRecord::Migration
  def self.up
    create_table :informacoes do |t|
      t.text :seo_text
      t.string :telefone
      t.text :descricao
      t.string :frases_chave
      t.string :video

      t.timestamps
    end
  end

  def self.down
    drop_table :informacoes
  end
end
