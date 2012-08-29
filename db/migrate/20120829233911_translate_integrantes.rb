class TranslateIntegrantes < ActiveRecord::Migration
  def self.up
    Integrante.create_translation_table!({
      :nome => :string,
      :descricao => :text
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Integrante.drop_translation_table! :migrate_data => true
  end
end
