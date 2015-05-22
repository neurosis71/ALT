class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    @page_title = t('app.contact.title')
  end

  def create
    @contact = Contact.new(params[:contacts])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = t('mail.flash.success')
    else
      flash.now[:error] = t('mail.flash.error')
      render :new
    end
  end
end
