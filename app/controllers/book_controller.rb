class BookController < ApplicationController
  def index
    @page_title = t('app.book.title')
    @locations = Location.all
  end
end
