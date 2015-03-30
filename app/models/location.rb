class Location < ActiveRecord::Base
  has_one :albums

  private

  def location_params
    params.require(:location).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en)
  end
end
