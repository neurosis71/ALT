class ProjectsController < ApplicationController
  def show
    @project = Album.find(params[:id])
    @photos = @project.photos

    if I18n.locale == :fr
      @page_title = @project.name_fr
      @description = @project.description_fr
    else
      @page_title = @project.name_en
      @description = @project.description_en
    end
  end
end
