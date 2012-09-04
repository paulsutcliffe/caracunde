class TranslateTableInformacoes < ActiveRecord::Migration
  def self.up
    Informacao.create_translation_table!({
      :seo_text => :text,
      :video => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Informacao.drop_translation_table! :migrate_data => true
  end
end

