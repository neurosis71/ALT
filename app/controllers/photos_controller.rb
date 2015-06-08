class PhotosController < ApplicationController
  def index
    @page_title = t('app.photos.title')

    @albums = Album.all.where("project = ?", false).where("perso = ?", false)
  end

  def show
    @album = Album.find(params[:id])
    @photos = @album.photos

    if I18n.locale == :fr
      @page_title = @album.name_fr
      @description = @album.description_fr
    else
      @page_title = @album.name_en
      @description = @album.description_en
    end
  end
end
