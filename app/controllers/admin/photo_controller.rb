class Admin::PhotoController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

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
    @project = params[:project] #check if we are coming from a project or an album to put the correct 'back' button
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
    @photo = Photo.find(params[:id])
  end

  def destroy
    respond_to do |format|
      @photo = Photo.find(params[:id])
      @album_id = @photo.album_id
      @photo.destroy
      format.js #this function is only called via a jquery ajax call
    end
  end

  private

  def photo_params
    params.require(:album_image).permit(:album_image, :album_id)
  end
end
