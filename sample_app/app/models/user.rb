class User < ActiveRecord::Base

  def self.koala(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture")


	#profile = facebook.get_object("me")
	#friends = facebook.get_connections("me", "friends")
	facebook.put_connections("me", "feed", :message => "SWAAAAG")
	#facebook.put_wall_post("hey, i'm learning koala")
	
  end

end 
