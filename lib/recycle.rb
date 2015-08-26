require 'open-uri'
require 'json'
require 'pry'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE  

  
#This method gets all the data from the NYC public recycling bin list and displays it as one huge string and its really messy and gross 
def raw_data
  open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json").read
end

#this method takes that big messy string 
#and turns it into an array of hashes
def parsed_data
  JSON.parse(raw_data)
end

# first_recycling_bin (and all the other recycling_bin hashes) is a variable storing a hash that looks like this:

# {"address"=>"E 227 St/Bronx River Pkway",
#  "site_type"=>"Subproperty",
#  "longitude"=>"-73.864223918",
#  "borough"=>"Bronx",
#  "latitude"=>"40.890848989",
#  "park_site_name"=>"227th St. Plgd"}


first_recycling_bin = parsed_data[0]
second_recycling_bin = parsed_data[1]
third_recycling_bin = parsed_data[2]
fourth_recycling_bin = parsed_data[3]


###### Code Your Solutions Here!!!



