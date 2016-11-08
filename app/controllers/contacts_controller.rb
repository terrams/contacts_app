class ContactsController < ApplicationController

  def show_first_name
    x = Contact.first
    @first = x.first_name
    render 'first_name.html.erb'
  end

  def all_contacts
   @array = Contact.all
   render 'all_contacts.html.erb'
  end

end
