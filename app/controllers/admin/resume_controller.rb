class Admin::ResumeController < ApplicationController

  layout 'admin'

  def index
    @cursus = Cursu.all
    @professional_experiences = ProfessionalExperience.all
    @skills = Skill.all
  end

  def show

  end

end
