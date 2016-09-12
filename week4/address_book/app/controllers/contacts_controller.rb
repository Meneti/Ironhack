class ContactsController < ApplicationController
	def index
	@contacts = Contact.order(name: :asc)
	render "index"
	end
	def new
	end
	def create
     contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phonenumber => params[:contact][:phonenumber],
      :email => params[:contact][:email])
    if contact.email[/^\w+@\w+\.[A-Za-z]+$/] && contact.phonenumber == [/(\+1 )?\(?[0-9]{3}\)? ?-?[0-9]{3}-?[0-9]{4}/]
      contact.save
      redirect_to("/contacts")
     else
     	redirect_to("/contacts/new")
     end
  	end
    def show
    	@contact = Contact.find_by(id: params[:id])
   	render "show"
	end

 end

