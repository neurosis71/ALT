class Location < ActiveRecord::Base
  has_many :albums, :dependent => :destroy

  #main image upload definition for paperclip
  has_attached_file :main_image,
                    :styles => {:medium => "300x300", :thumb => "100x100"},
                    :path => ":rails_root/public/images/locations/:id/:style_:basename.:extension",
                    :url => ":class/:id/:style_:basename.:extension",
                    :default_url => "/images/errors/no_pic_available.jpg"
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/
end
