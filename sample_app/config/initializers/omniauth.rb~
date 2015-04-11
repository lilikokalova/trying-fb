Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :facebook, '652014161609196' ,  '5fe98fe028d942071b4ef541f4fc248d'
  #provider :twitter, 'fPgYzvchtNm1eBLv97hqiLJub', '5yuQRDhHiipJ8pf3Kw75lKU0nwp46KOb5l5jbpcnnQyBj1KPFe'  
  provider :facebook, FACEBOOK_CONFIG['app_id'], FACEBOOK_CONFIG['secret'], :scope => 'user_about_me,publish_actions'
  provider :twitter, TWITTER_CONFIG['consumer_key'], TWITTER_CONFIG['consumer_secret'], :scope => 'user_about_me,publish_actions'
end 


