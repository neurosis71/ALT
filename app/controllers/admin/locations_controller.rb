class Admin::LocationsController < ApplicationController

  layout 'admin'

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @projects = @location.albums
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to(:controller => 'locations', :action => 'index')
    else
      render('new')
    end
  end

  def edit
    @location = Location.find(params[:id])
    #@projects = @location.albums
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      redirect_to(:controller => 'locations', :action => 'index')
    else
      render('edit')
    end
  end

  def delete
    @location = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id]).destroy
    redirect_to(:controller => 'locations', :action => 'index')
  end


  private

  def location_params
    params.require(:location).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en)
  end
end
