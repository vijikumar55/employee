class ContactsController < ApplicationController

  ##used before_action because some lines are common to these method
  before_action :load_contact_details, only: [:show, :edit, :update]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new contact_params
    #creates associated address and phone number objects
    @address = @contact.addresses.build(address_params)
    @phonenumber = @contact.phonenumbers.build(phonenumber_params)
    begin
      #Used transaction block to avoid data loss. If anything fails inside transaction block all the items will rollback.
      Contact.transaction do
        @contact.save!
        @address.save!
        @phonenumber.save!
      end
    rescue
      flash[:notice] = "Contact failed to create!"
      render :action => 'new'
    else
      Rails.logger.info "Contact has been saved successfully!"
      flash[:notice] = "Contact saved successfully!"
      redirect_to contacts_path
    end
  end

  def show
    #data will be loaded from before_action
  end

  def edit
    #data will be loaded from before_action
  end

  def update
    begin
      Contact.transaction do
        @contact.update_attributes! contact_params
        @address.update_attributes! address_params
        @phonenumber.update_attributes! phonenumber_params
      end
    rescue
      flash[:notice] = "Contact failed to update!"
      render :action => :edit
    else
      flash[:notice] = "Contact updated successfully!"
      redirect_to contacts_path
    end
  end

  def destroy
    @contact = Contact.find params[:id]
    @contact.destroy
    Rails.logger.info "Contact #{@contact.first_name} deleted successfully!"
    flash[:notice] = "Contact deleted successfully!"
    redirect_to contacts_path
  end

  def load_contact_details
    @contact = Contact.find params[:id]
    @address = @contact.addresses.first
    @phonenumber = @contact.phonenumbers.first
  end

  private

  #Used strong parameters to whitelist params. It protects from mass-assignment

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :age)
  end

  def address_params
    params.require(:address).permit(:door_no, :street, :city, :state, :country)
  end

  def phonenumber_params
    params.require(:phonenumber).permit(:phone_number)
  end

end
