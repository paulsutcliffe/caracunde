class AddAttachmentRetratoToIntegrantes < ActiveRecord::Migration
  def self.up
    add_column :integrantes, :retrato_file_name, :string
    add_column :integrantes, :retrato_content_type, :string
    add_column :integrantes, :retrato_file_size, :integer
    add_column :integrantes, :retrato_updated_at, :datetime
  end

  def self.down
    remove_column :integrantes, :retrato_file_name
    remove_column :integrantes, :retrato_content_type
    remove_column :integrantes, :retrato_file_size
    remove_column :integrantes, :retrato_updated_at
  end
end
