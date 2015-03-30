class Skill < ActiveRecord::Base

  private

  def skill_params
    params.require(:skill).permit(:description_fr, :description_en)
  end
end
