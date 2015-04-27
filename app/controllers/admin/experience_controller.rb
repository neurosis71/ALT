class Admin::ExperienceController < ApplicationController

  layout "admin"

  def index
    @experiences = ProfessionalExperience.all
  end

  def show
    @experience = ProfessionalExperience.find(params[:id])
  end

  def new
    @experience = ProfessionalExperience.new
  end

  def create
    @experience = ProfessionalExperience.new(professional_experience_params)
    if @experience.save
      flash[:notice] = "L'expérience à été créé"
      redirect_to(admin_experience_path(:id => @experience.id))
    else
      render('new')
    end
  end

  def edit
    @experience = ProfessionalExperience.find(params[:id])
  end

  def update
    @experience = ProfessionalExperience.find(params[:id])
    if @experience.update_attributes(professional_experience_params)
      flash[:notice] = "L'expérience est mise à jour"
      redirect_to(admin_experience_path(:id => @experience.id))
    else
      render('edit')
    end
  end

  def delete
    @experience = ProfessionalExperience.find(params[:id])
  end

  def destroy
    @experience = ProfessionalExperience.find(params[:id]).destroy
    flash[:notice] = "L'expérience à été supprimée"
    redirect_to(:controller => 'resume', :action => 'index')
  end

  private

  def professional_experience_params
    params.require(:professional_experience).permit(:date, :company, :location_fr, :location_en, :description_fr, :description_en)
  end
end
