class Integrante < ActiveRecord::Base
  has_attached_file :retrato, :styles => { :medium => "500x500#" }
end
