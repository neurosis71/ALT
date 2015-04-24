class Admin::CursusController < ApplicationController

  layout "admin"

  def index
    @cursus = Cursu.all
  end

  def show
    @cursu = Cursu.find(params[:id])
  end

  def new
    @cursu = Cursu.new
  end

  def create
    @cursu = Cursu.new(cursu_params)
    if @cursu.save
      redirect_to(admin_cursu_path(:id => @cursu.id))
    else
      render('new')
    end
  end

  def edit
    @cursu = Cursu.find(params[:id])
  end

  def update
    @cursu = Cursu.find(params[:id])
    if @cursu.update_attributes(cursu_params)
      redirect_to(admin_cursu_path(:id => @cursu.id))
    else
      render('edit')
    end
  end

  def delete
    @cursu = Cursu.find(params[:id])
  end

  def destroy
    Cursu.find(params[:id]).destroy
    redirect_to(:controller => 'resume', :action => 'index')
  end

  private

  def cursu_params
    params.require(:cursu).permit(:date, :school, :location_fr, :location_en,:description_fr, :description_en)
  end
end
