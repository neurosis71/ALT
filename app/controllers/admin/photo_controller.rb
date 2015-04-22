class Admin::PhotoController < ApplicationController

  layout 'admin'

  def index
    @photos = Photo.where("album_id = ?", params[:album_id])
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photos = Photo.where("album_id = ?", params[:album_id]).order('created_at DESC')
    @photo = Photo.new
    @album_id = params[:album_id]
  end

  def create
    respond_to do |format|
      @photo = Photo.new(photo_params)
      @photo.save
      format.html { redirect_to edit_admin_project_path(:id => @photo.album_id) }
      format.js
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def photo_params
    params.require(:image).permit(:image, :album_id)
  end
end
