class UsersController < ApplicationController

def new 
    @user = User.new
end

def create
    @user = User.new(user_params)
    if @user.save
        session[:user_id] = @user.id 
        redirect_to user_path(@user)
    else
        flash[message: @user.errors.full_messages.join]
        render :new
    end
end

def show
    redirect_if_not_logged_in
    @user = User.find_by_id(params[:id])
    redirect_to '/' if !@user 
end

def destroy
    @user = User.find(params[:id]).destroy
    direct_to user_path(@user)
end

private

def user_params
    params.require(:user).permit(:username, :email, :password)
end

def modified_date
    strftime("%b %d, %Y")
end

end
