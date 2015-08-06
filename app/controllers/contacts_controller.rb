class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @page_title = t('app.contact.title')
  end

  def create
    begin
      @contact = Contact.new(params[:contact])
      @contact.request = request
      if @contact.deliver_now
        flash.now[:notice] = t('mail.flash.success')
        render :new
      else
        flash.now[:error] = t('mail.flash.error')
        render :new
      end
    rescue ScriptError
      flash[:error] = t('mail.flash.spam')
    end
  end
end
