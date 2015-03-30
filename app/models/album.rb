class Album < ActiveRecord::Base
  belongs_to :locations
  has_many :images


  private

  def album_params
    params.require(:album).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en)
  end
end
