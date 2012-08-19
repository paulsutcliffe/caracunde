class Patrocinador < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "160>x110" }
end
