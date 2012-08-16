class Foto < ActiveRecord::Base
  belongs_to :album
  has_attached_file :foto,
                    :styles => { :medium => "500x500#" }
end
