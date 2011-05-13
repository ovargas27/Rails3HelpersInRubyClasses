class ContactsController < ApplicationController
  def show
    @contact = Contact.new
  end

  def create
    @contact = Contact.new()
    @contact.name = params[:contact][:name]
    @contact.email = params[:contact][:email]
    @contact.comment = params[:contact][:comment]
  end
end
