class Admin::AboutController < ApplicationController

  layout "admin"


  ##################################
  #             WARNING            #
  ##################################

  #we always want to work on the first row in the table as there should be only one entry
  #on installation, you must seed the database with /db/seeds.rb to create the row

  def show
    @about = About.find(1)
  end

  def new
    @about = About.new
  end

  def edit
    @about = About.find(1)
  end

  def update
    @about = About.find(1)
    if @about.update_attributes(about_params)
      flash[:notice] = "La section a propos à été mise à jour"
      redirect_to(:action => 'show', :id => @about.id)
    else
      render('edit')
    end
  end

  private

  def about_params
    params.require(:about).permit(:about_fr, :about_en, :career_fr, :career_en, :interests_fr, :interests_en)
  end

end
