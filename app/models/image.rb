class Image < ActiveRecord::Base
  belongs_to :albums

  #main image upload definition for paperclip
  has_attached_file :main_image,
                    :styles => {:medium => "300x300", :thumb => "100x100"},
                    :path => ":rails_root/public/images/photos/:id/:style_:basename.:extension",
                    :url => ":class/:id/:style_:basename.:extension",
                    :default_url => "/images/errors/no_pic_available.jpg"
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/

  private

  def image_params
    params.require(:image).permit(:path)
  end
end