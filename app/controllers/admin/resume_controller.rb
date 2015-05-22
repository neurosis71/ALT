class Admin::ResumeController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    if File.exist?("public/resume/Audrey LEPERS-TASSY.pdf")
      @file_modified = File.mtime("public/resume/Audrey LEPERS-TASSY.pdf")
    end
    @cursus = Cursu.all
    @professional_experiences = ProfessionalExperience.all
    @skills = Skill.all
  end

  def resume_upload
    type = params[:file].content_type
    if type == "application/pdf"
      name =  "Audrey LEPERS-TASSY.pdf"
      directory = "public/resume"
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
