class Admin::LocationsController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    if I18n.locale == "fr"
      @locations = Location.all.order(name_fr: :asc)
    else
      @locations = Location.all.order(name_en: :asc)
    end
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
      flash[:notice] = "Le lieu à été créé"
      redirect_to(admin_location_path(:id => @location.id))
    else
      render('new')
    end
  end

  def edit
    @location = Location.find(params[:id])
    @projects = @location.albums
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(location_params)
      flash[:notice] = "Le lieu est mis à jour"
      redirect_to(admin_location_path(:id => @location.id))
    else
      @projects = @location.albums
      render('edit')
    end
  end

  def delete
    @location = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id]).destroy
    flash[:notice] = "Le lieu à été supprimé"
    redirect_to(:controller => 'locations', :action => 'index')
  end


  private

  def location_params
    params.require(:location).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en)
  end
end
