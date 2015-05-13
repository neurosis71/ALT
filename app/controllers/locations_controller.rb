class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
    @projects = @location.albums

    if I18n.locale == :fr
      @page_title = @location.name_fr
    else
      @page_title = @location.name_en
    end
  end
end
