class AddAttachmentLogoToPatrocinadores < ActiveRecord::Migration
  def self.up
    add_column :patrocinadores, :logo_file_name, :string
    add_column :patrocinadores, :logo_content_type, :string
    add_column :patrocinadores, :logo_file_size, :integer
    add_column :patrocinadores, :logo_updated_at, :datetime
  end

  def self.down
    remove_column :patrocinadores, :logo_file_name
    remove_column :patrocinadores, :logo_content_type
    remove_column :patrocinadores, :logo_file_size
    remove_column :patrocinadores, :logo_updated_at
  end
end
