class UsersController < ApplicationController
 def new
 @user = User.new
 end

 def create
    #redirect_if_not_signed_in
   @user = User.new(user_params)
   if @user.save
    session[:user_id] = @user.id
    redirect_to goalS_path
   else
      render :new
   end
 end
 
 private
 def user_params
   params.require(:user).permit(:username, :email, :password)
 end

end
