class SessionsController < ApplicationController

def index
end

def destroy
    session.clear
    redirect_to root_path
end

def create
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
        #if we find the user and their password is correct...
        session[:user_id] = user.id
        redirect_to user_path(user) #"/users/#(user.id)"
    else 
        flash[:message] = "Incorrect log in information. Please try again."
        redirect_to "/login"
    end
end


end