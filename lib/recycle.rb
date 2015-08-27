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


#1. Define a method `address`, that takes a hash as an argument.
#This method should return the value of the address key in the hash.

#2. Define a method called `borough` that takes a hash as an argument.
# This method should return the value of the borough key in the hash.

#3. Define a method called `all_keys` that takes a hash as an argument.
#This method should print out each key in the hash. 
#You should use the `each_key` method to iterate over your hash and print out each key.

#4. Define a method called `all_data` that takes a hash as an argument.
#This method should print out each value in the hash.
#You should use the `each_value` method to iterate over your hash and print out each value.

#5. Define a method called `key_and_data` that takes a hash as an argument.
#This method should print out each key and value in the hash in a sentence like this: `The #{key} is #{value}`
#You should use the `each` method to iterate over your hash to print out that sentence