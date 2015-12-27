###### Code Your Solutions Here!!!

#Your code should work with a hash that looks like the one below (in comments).
#The specs (which call your tests) are using these exact hashes 
# We haven't hard coded the hashes in the tests, 
#they're dynamically brought in from the NYC Open Data API

# first_recycle_bin =  {
#   "address"=>"E 227 St/Bronx River Pkway",
#   "site_type"=>"Subproperty",
#   "longitude"=>"-73.864223918",
#   "borough"=>"Bronx",
#   "latitude"=>"40.890848989",
#   "park_site_name"=>"227th St. Plgd"
# }

def address(recycling_info)
  recycling_info["address"]
end

def borough(recycling_info)
  recycling_info["borough"]
end

def all_keys(recycling_info)
  recycling_info.each_key do |info|
    puts info
  end
end

def all_data(recycling_info)
  recycling_info.each_value do |data|
    puts data
  end
end

def key_and_data(recycling_info)
  recycling_info.each do |topic, data|
    puts "The #{topic} is #{data}"
  end
end

