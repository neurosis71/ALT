class Admin::AlbumsController < ApplicationController

  layout 'admin'

  def index
    @albums = Album.all.where("project = ?", 0)
  end

  def show
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to(admin_album_path(@album))
    else
      render('new')
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      redirect_to(:controller => 'albums', :action => 'show')
    else
      render('edit')
    end
  end

  def delete
    @album = Album.find(params[:id])
  end

  def destroy
    #@album = Album.find(params[:id])
    Album.find(params[:id]).destroy
    redirect_to(:controller => 'albums', :action => 'index')
  end

  private

  def album_params
    params.require(:album).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en, :project)
  end
end
