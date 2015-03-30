class Cursu < ActiveRecord::Base


  private

  def cursu_params
    params.require(:cursu).permit(:date, :school, :location_fr, :location_en,:description_fr, :description_en)
  end
end
