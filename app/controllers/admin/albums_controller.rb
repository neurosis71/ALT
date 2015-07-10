class Admin::AlbumsController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    if I18n.locale == "fr"
      @albums = Album.all.where("project = ?", false).where("perso = ?", false).order(name_fr: :asc)
    else
      @albums = Album.all.where("project = ?", false).where("perso = ?", false).order(name_en: :asc)
    end
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      flash[:notice] = "L'album à été créé"
      redirect_to(admin_album_path(@album))
    else
      render('new')
    end
  end

  def edit
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

  def update
    @album = Album.find(params[:id])
    if @album.update_attributes(album_params)
      flash[:notice] = "L'album est mis à jour"
      redirect_to(admin_album_path(:id => @album.id))
    else
      render('edit')
    end
  end

  def delete
    @album = Album.find(params[:id])
    @photos = @album.photos
  end

  def destroy
    #@album = Album.find(params[:id])
    Album.find(params[:id]).destroy
    flash[:notice] = "L'album à été supprimé"
    redirect_to(admin_albums_path)
  end

  private

  def album_params
    params.require(:album).permit(:name_fr, :name_en, :main_image, :description_fr, :description_en, :project, :perso)
  end
end
