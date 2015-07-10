class Admin::ResumeController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    if File.exist?("public/files/CV - Audrey LEPERS-TASSY.pdf")
      @file_modified_fr = File.mtime("public/files/CV - Audrey LEPERS-TASSY.pdf")
    end
    if File.exist?("public/files/resume - Audrey LEPERS-TASSY.pdf")
      @file_modified_en = File.mtime("public/files/resume - Audrey LEPERS-TASSY.pdf")
    end
    @cursus = Cursu.all.order(date: :asc)
    @professional_experiences = ProfessionalExperience.all.order(date: :asc)
    if I18n.locale == "fr"
      @skills = Skill.all.order(description_fr: :asc)
    else
      @skills = Skill.all.order(description_en: :asc)
    end
  end

  def resume_upload
    type = params[:file].content_type
    if type == "application/pdf"
      if params[:lang] == "fr"
        name =  "CV - Audrey LEPERS-TASSY.pdf"
      else
        name =  "resume - Audrey LEPERS-TASSY.pdf"
      end

      directory = "public/files"
      # create the file path
      path = File.join(directory, name)
      # write the file
      File.open(path, "wb") { |f| f.write(params[:file].read) }
      flash[:notice] = "Le fichier a ete uploade"
      redirect_to(admin_resume_index_path)
    else
      flash[:notice] = "Le fichier doit etre un pdf"
      redirect_to(admin_resume_index_path)
    end
  end
end
