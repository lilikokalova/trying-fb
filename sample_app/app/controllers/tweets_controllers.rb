class TweetsController < ApplicationController
  def new
  end

  def create
    current_user.tweet(twitter_params[:message])
  end

  def twitter_params
    params.require(:tweet).permit(:message)
  end
end


class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
 
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end 
