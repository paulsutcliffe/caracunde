class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titulo, :use => :slugged

  translates :titulo, :conteudo

  has_attached_file :imagen, :styles => { :medium => "280>x500", :full => "430>x430" }

end
