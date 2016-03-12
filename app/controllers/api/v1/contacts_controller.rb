module Api
  module V1
    class ContactsController < ApplicationController
      def index
        user = User.find_by(nick: params[:nick])

        @contacts = user.contacts
      end

      def create
        user = User.find_or_create_by(nick: params[:nick])

        contact = user.contacts.create(contacts_params)
        render json: contact
      end

      def destroy
        contact = Contact.find(params[:id])

        if contact.destroy
          render json: contact
        else
          render json: { status: 500, message: 'Error' }
        end
      end

      private

      def set_contact

      end

      def contacts_params
        params.require(:contact).permit(:name, :number, :carrier_id)
      end
    end
  end
end
