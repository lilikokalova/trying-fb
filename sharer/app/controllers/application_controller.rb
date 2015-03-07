class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #these codes can be modified depends on your needs
	include Twitter::Login::Helpers

	def current_user
	  session[:twitter_user] ||= twitter_user
	end
	helper_method :current_user

	def logged_in?
	  !!current_user
	end
	helper_method :logged_in?
end
