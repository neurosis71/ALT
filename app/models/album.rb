class Album < ActiveRecord::Base
  belongs_to :locations
  has_many :photos, :dependent => :destroy

  validates :name_fr, presence: true, length: { maximum: 300, too_long: "%{count} charactères autorisés"}
  validates :name_en, presence: true, length: { maximum: 300, too_long: "%{count} charactères autorisés"}
  validates :description_fr, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}
  validates :description_en, length: { maximum: 3000, too_long: "%{count} charactères autorisés"}

  #main image upload definition for paperclip
  has_attached_file :main_image,
                    :styles => {:medium => "300x300", :thumb => "100x100", :grey => "300x300", :large => "800x800"},
                    :convert_options => {:grey => "-colorspace Gray"},
                    :path => ":rails_root/public/images/albums/:id/:style_:basename.:extension",
                    :url => ":class/:id/:style_:basename.:extension",
                    :default_url => "/images/errors/no_pic_available.jpg"
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/
end
