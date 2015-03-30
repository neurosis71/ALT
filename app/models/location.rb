class Location < ActiveRecord::Base
  has_one :albums
end
