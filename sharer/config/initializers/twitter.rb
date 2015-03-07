require 'twitter'
require 'net/http'
require 'json'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'fPgYzvchtNm1eBLv97hqiLJub'
  config.consumer_secret = '5yuQRDhHiipJ8pf3Kw75lKU0nwp46KOb5l5jbpcnnQyBj1KPFe'
  config.access_token = '179516515-t1DSMep9DPord6OanZcBI7Ir151LJ58Tke6S1zw8'
  config.access_token_secret = '5yuQRDhHiipJ8pf3Kw75lKU0nwp46KOb5l5jbpcnnQyBj1KPFe'
end 
