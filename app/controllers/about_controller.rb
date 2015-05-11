class AboutController < ApplicationController
  def index

    @page_title = t('app.about.title')
  end
end
