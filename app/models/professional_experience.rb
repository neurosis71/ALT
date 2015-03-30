class ProfessionalExperience < ActiveRecord::Base

  private

  def professional_experience_params
    params.require(:professional_experience).permit(:date, :company, :location_fr, :location_en, :description_fr, :description_en)
  end
end
