class AboutController < ApplicationController
  def index

    @page_title = t('app.about.title')
    @about = About.find(1)
    if I18n.locale == :fr
      @about_text = @about.about_fr
      @career_text = @about.career_fr
      @interests_text = @about.interests_fr
    else
      @about_text = @about.about_en
      @career_text = @about.career_en
      @interests_text = @about.interests_en
    end
  end
end
