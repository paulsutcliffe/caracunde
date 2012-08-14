class Patrocinador < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "500x500#" }
end
