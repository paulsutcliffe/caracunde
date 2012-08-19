class Integrante < ActiveRecord::Base
  has_attached_file :retrato, :styles => { :medium => "430>x400" }
end
