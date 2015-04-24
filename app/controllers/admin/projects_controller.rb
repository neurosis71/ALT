class Admin::ProjectsController < ApplicationController

  layout 'admin'

  def index
    @projects = Album.all.where("project = ?",1)
  end

  def show
    @project = Album.find(params[:id])
  end

  def new
    @project = Album.new
    @location_id = params[:location_id]
  end

  def create

    @project = Album.new(project_params)
    if @project.save
      redirect_to(admin_project_path(:id => @project.id))
    else
      render('new')
    end
  end

  def edit
    @project = Album.find(params[:id])
  end

  def update
    @project = Album.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to(admin_project_path(:id => @project.id))
    else
      render('edit')
    end
  end

  def delete
    @project = Album.find(params[:id])
  end

  def destroy
    Album.find(params[:id]).destroy
    redirect_to(:controller => 'locations', :action => 'edit', :id => @project.location_id)
  end

  private

  def project_params
    params.require(:album).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en, :location_id, :project)
  end

end
