class Admin::SkillsController < ApplicationController

  layout "admin"
  before_action :authenticate_user!

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      flash[:notice] = "La compétence à été créé"
      redirect_to(admin_skill_path(:id => @skill.id))
    else
      render('new')
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(skill_params)
      flash[:notice] = "La compétence est mise à jour"
      redirect_to(admin_skill_path(:id => @skill.id))
    else
      render('edit')
    end
  end

  def delete
    @skill = Skill.find(params[:id])
  end

  def destroy
    Skill.find(params[:id]).destroy
    flash[:notice] = "La compétence à été supprimée"
    redirect_to(:controller => 'resume', :action => 'index')
  end

  private

  def skill_params
    params.require(:skill).permit(:description_fr, :description_en, :rank)
  end
end
