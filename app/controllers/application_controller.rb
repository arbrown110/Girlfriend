class ApplicationController < ActionController::Base

 private

 def current_user
  @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
 end

 def logged_in?
  !!session[:user_id]
 end

 def redirect_if_not_signed_in
  redirect_to '/' if !logged_in?
 end
end
