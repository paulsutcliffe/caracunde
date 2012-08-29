class Integrante < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use => :slugged

  translates :nome, :descricao

  has_attached_file :retrato, :styles => { :medium => "430>x400" }
end
