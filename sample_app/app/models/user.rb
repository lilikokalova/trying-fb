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
  def self.from_omniauth(auth)
    user = where(provider: auth.provider, uid: auth.uid).first || create_from_omniauth(auth)
    user.oauth_token = auth.credentials.token
    user.oauth_secret = auth.credentials.secret
    user.save!
    user


  end


  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
      user.image_url = auth.info.image
      user.save 
    end
  end


  def twitter
      @twitter ||= Twitter::Client.new(oauth_token: oauth_token, oauth_token_secret: oauth_secret, access_token: ENV['179516515-t1DSMep9DPord6OanZcBI7Ir151LJ58Tke6S1zw8'], access_token_secret: ENV['RyaFyC1IsrzjPxdLBqPiYodDpmQ5UBb8eZBFarXdmNApV'] ) #ENV's are stored locally. 
  end
  
end


