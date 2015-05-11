class PhotosController < ApplicationController
  def index
    @page_title = t('app.photos.title')
  end
end
