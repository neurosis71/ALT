class About < ActiveRecord::Base

  private

  def about_params
    params.require(:about).permit(:about_fr, :about_en, :career_fr, :career_en, :interests_fr, :interests_en)
  end
end
