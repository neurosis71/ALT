class Admin::ContactController < ApplicationController

  layout 'admin'
  before_action :authenticate_user!

  def index
    data = YAML.load_file(Rails.root + 'config/contact.yml')
    @email = data["email"]
  end

  def update
    data = YAML.load_file File.join(Rails.root, 'config', 'contact.yml')
    data["email"] = params[:email]
    File.open(File.join(Rails.root, 'config', 'contact.yml'), 'w') { |f| YAML.dump(data, f) }
    flash[:notice] = "L'email à été mis à jour"
    redirect_to admin_contact_path
  end
end
