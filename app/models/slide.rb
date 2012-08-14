class Slide < ActiveRecord::Base
  has_attached_file :slide, :styles => { :medium => "500x500#" }
end
