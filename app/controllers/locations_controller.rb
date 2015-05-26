class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @projects = @location.albums

    if I18n.locale == :fr
      @page_title = @location.name_fr
      @description = @location.description_fr
    else
      @page_title = @location.name_en
      @description = @location.description_en
    end
  end
end
