class ResumeController < ApplicationController
  def index
    @page_title = t('app.resume.title')

    @cursus = Cursu.all
    @professional_experiences = ProfessionalExperience.all
    @skills = Skill.all

    @lang = I18n.locale
  end
end
