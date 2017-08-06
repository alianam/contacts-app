class ContactsController < ApplicationController
  def contact1
    @contacts = Contact.all
    # @contact1 = Contact.first
    render 'contact1.html.erb'
  end

  def new_contact_form
    render 'new_contact_form.html.erb'
  end

  def add_contact
    @new_contact = Contact.new({first_name: params["first_name"], last_name: params["last_name"], email: params["email"], phone_number: params["phone_number"]})
    @new_contact.save
    render 'contact_added.html.erb'
  end
end
