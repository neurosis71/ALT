class ResumeController < ApplicationController
  def index
    @page_title = t('app.resume.title')

    @cursus = Cursu.all.order('date DESC')
    @professional_experiences = ProfessionalExperience.all.order('date DESC')
    @skills = Skill.all

    @lang = I18n.locale
  end
end
