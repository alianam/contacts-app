class ContactsController < ApplicationController
  def index
    # @contacts = current_user.contacts
    # this line above does exactly the same as the line below once a contact is assigned to a user
    @contacts = Contact.where(user_id: session[:user_id])
    # since this will break if someone isn't logged in, redirect_to '/login' if current_user is nil
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @new_contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      bio: params[:bio],
      address: params[:address],
      user_id: session[:user_id]
    )
    @new_contact.save
    redirect_to "/contacts/#{@new_contact.id}"
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    if current_user && current_user.id == @contact.user_id
      render 'show.html.erb'
    else
      redirect_to '/contacts'
    end
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params["first_name"],
      middle_name: params["middle_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      bio: params["bio"]
    )
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts/"
  end

  def johns
    @contacts = Contact.all
    @johns = @contacts.each do |contact|
      contact.all_johns
    end
    render 'johns.html.erb'
  end
end
