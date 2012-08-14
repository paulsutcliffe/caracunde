class Post < ActiveRecord::Base
  has_attached_file :imagen, :styles => { :medium => "500x500#" }
end
