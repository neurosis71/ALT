class Admin::PersoProjectsController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    @projects = Album.all.where("perso = ?",1)
  end

  def show
    @project = Album.find(params[:id])
    @photos = @project.photos
  end

  def new
    @project = Album.new
  end

  def create
    @project = Album.new(project_params)
    if @project.save
      flash[:notice] = "Le projet à été créé"
      redirect_to(admin_perso_project_path(:id => @project.id))
    else
      render('new')
    end
  end

  def edit
    @project = Album.find(params[:id])
    @photos = @project.photos
  end

  def update
    @project = Album.find(params[:id])
    if @project.update_attributes(project_params)
      flash[:notice] = "Le projet est mis à jour"
      redirect_to(admin_perso_project_path(:id => @project.id))
    else
      render('edit')
    end
  end

  def delete
    @project = Album.find(params[:id])
    @photos = @project.photos
  end

  def destroy
    Album.find(params[:id]).destroy
    flash[:notice] = "Le projet à été supprimé"
    redirect_to(admin_perso_projects_path)
  end

  private

  def project_params
    params.require(:album).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en, :location_id, :project, :perso)
  end
end
