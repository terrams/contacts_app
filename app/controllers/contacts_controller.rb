class ContactsController < ApplicationController
  
  def index  
    @contacts = Contact.all  
    render 'index.html.erb'
  end

  def new    
    render 'new.html.erb'
  end

  def create
    contact = Contact.new
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.email = params[:email]
    contact.phone_number = params[:phone_number]
    contact.save
    render 'create.html.erb'
  end

  def show
    @contact = Contact.find_by id: params[:id]
    render 'show.html.erb'
  end

  def edit
    @contact = Contact.find_by id: params[:id]  
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by id: params[:id]
    render 'update.html.erb'
  end

  def destroy
   contact = Contact.find_by(id: params[:id])
   contact.destroy
   render 'destroy.html.erb'
  end

=begin
  def show_first_name
    x = Contact.first
    @first = x.first_name
    render 'first_name.html.erb'
  end

  def all_contacts
   @array = Contact.all
   render 'all_contacts.html.erb'
  end

  def input
    render 'input.html.erb'
  end

  def output
    @product = params[:product]
    render 'output.html.erb'
  end
=end

end
