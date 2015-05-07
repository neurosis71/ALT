class Admin::ResumeController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    @cursus = Cursu.all
    @professional_experiences = ProfessionalExperience.all
    @skills = Skill.all
  end

end
