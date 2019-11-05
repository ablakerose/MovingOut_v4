class UsersController < ApplicationController

def new 
    @user = User.new
end

def create
    @user = User.new(user_params)
    if @user.save
        #log them in
        session[:user_id] = @user.id 
        #redirect to the show page
        redirect_to user_path(@user)
    else
        render :new
    end
end

def show
    redirect_if_not_logged_in
    @user = User.find_by_id(params[:id])
    redirect_to '/' if !@user 
end

private

def user_params
    params.require(:user).permit(:username, :email, :password)
end

# def formatted_created_by
#     self.created_at.strftime("%b %d, %Y")
# end

end
