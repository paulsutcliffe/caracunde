class Album < ActiveRecord::Base
  has_many :fotos
  validates :nome, :presence => true
end
