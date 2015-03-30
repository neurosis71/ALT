class Album < ActiveRecord::Base
  belongs_to :locations
  has_many :images
end
