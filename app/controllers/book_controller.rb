class BookController < ApplicationController
  def index
    @page_title = t('app.book.title')
  end
end
