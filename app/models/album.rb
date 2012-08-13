class Album < ActiveRecord::Base
  validates :nome, :presence => true
end
