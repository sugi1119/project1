class SessionController < ApplicationController

  def new
  end

  def create
   practioner = Practioner.find_by(:username => params[:username] )
   #raise params.inspect
   if practioner.present? && practioner.authenticate(params[:password])
    session[:practioner_id] = practioner.id
    redirect_to root_path
  else
    flash[:notice] = "Invalid login. Please try again."
    redirect_to login_path
  end
end

  def destroy
    session[:practioner_id] = nil
    redirect_to login_path
  end

end
