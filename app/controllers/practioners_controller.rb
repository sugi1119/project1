class PractionersController < ApplicationController
    before_action :check_if_logged_in, :except => [:new, :create]

    before_action :check_if_admin, :only => [:index]

    def new
        @practioner = Practioner.new
    end

    def index
        @practioners = Practioner.all
    end

    def create
        @practioner = Practioner.new practioner_params
        if @practioner.save
            redirect_to root_path
        else
            render :new
        end
    end

    def edit
        @practioner = Practioner.find params[:id]
    end

    def show
        @practioner = Practioner.find params[:id]
    end

    def update
        practioner = Practioner.find params[:id]
        practioner.update practioner_params

        redirect_to practioner
    end

    def destroy
        practioner = Practioner.find params[:id]
        practioner.destroy

        redirect_to practioners_path
    end

    private
    def practioner_params
        params.require(:practioner).permit(:name, :password, :password_confirmation)
    end

    def check_if_logged_in
        redirect_to(new_practioner_path) if @current_user.nil?
    end

    def check_if_admin
        redirect_to(root_path) unless @current_user.is_admin?
    end
end



#      practioners GET    /practioners(.:format)           practioners#index
#                  POST   /practioners(.:format)           practioners#create
#   new_practioner GET    /practioners/new(.:format)       practioners#new
#  edit_practioner GET    /practioners/:id/edit(.:format)  practioners#edit
#       practioner GET    /practioners/:id(.:format)       practioners#show
#                  PATCH  /practioners/:id(.:format)       practioners#update
#                  PUT    /practioners/:id(.:format)       practioners#update
#                  DELETE /practioners/:id(.:format)       practioners#destroy