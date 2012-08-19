class Post < ActiveRecord::Base
  has_attached_file :imagen, :styles => { :medium => "280>x500", :full => "430>x430" }
end
