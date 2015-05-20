class InstagramController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media("469567906", {:count => :all})
  end
end
