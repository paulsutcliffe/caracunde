class Album < ActiveRecord::Base
  extend FriendlyId
  friendly_id :nome, :use => :slugged

  has_many :fotos
  validates :nome, :presence => true
end
