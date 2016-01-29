# NYC Recycles

<img src="https://s3.amazonaws.com/after-school-assets/nyc-recycle.gif" width="300" align="right" hspace="10">

New York City has open-sourced a lot of really interesting [data about life in the city](https://nycopendata.socrata.com/), things like the amount of water consumed by New Yorkers, leading cause of death in NYC, high school graduation outcomes by borough, location of all FDNY locations, and much much more.

Along with making this information free and available to the public, the City has made the information available through an API so we can build cool apps with their data. 

## APIs?

API stands for Application Programming Interface. It's basically a way for one app to communicate and use the data from another app. For example, Instagram used to use Foursquare for adding locations to images.

In this lab, you're not going to worry about how the API works, or how to use an API, just about how the data comes back from the API. Usually, all information from APIs gets sent to the application trying to use the data in the form of JSON. JSON is basically a set of nested arrays and hashes that make up the interesting data.

## Hashes

We've formatted the data from NYC Open Data about recycling bins around the city so that each location is it's own hash. Your job as a developer is to get comfortable with hashes. If you ever want to use an API for a future project, it's really important to be comfortable with data structures.


## Getting Started

You'll be coding your solutions in `lib/recyling.rb`. There is already some pre-written code in this file. Feel free to read the comments that explain how this code works. Those lines of code are retrieving the data from NYC Open Data. 

You have four hashes to work with, stored in four different variables:

```ruby
first_recycling_bin
second_recycling_bin
third_recycling_bin
fourth_recycling_bin
```

We've set up the API integration and stored the hashes in variables for you. Remember, because we're getting this data from NYC open data, you won't actually see the hash hard-coded in `lib/recycle.rb`. 

For reference, this is what each hash would look like:

```ruby
first_recycle_bin =  {
  "address"=>"E 227 St/Bronx River Pkway",
  "site_type"=>"Subproperty",
  "longitude"=>"-73.864223918",
  "borough"=>"Bronx",
  "latitude"=>"40.890848989",
  "park_site_name"=>"227th St. Plgd"}

second_recycle_bin = { 
  "address"=>"Allerton Ave & Moshulu Pkway",
  "site_type"=>"Subproperty",
  "longitude"=>"-73.8771283938",
  "borough"=>"Bronx",
  "latitude"=>"40.8488907878",
  "park_site_name"=>"Allerton Ballfields"}

third_recycle_bin = {
  "address"=>"Arthur Ave & 187 St",
  "site_type"=>"Outdoor",
  "longitude"=>"-73.887564999999995",
  "borough"=>"Bronx",
  "latitude"=>"40.85557",
  "park_site_name"=>"Arthur Ave & E 187 St"}

fourth_recycle_bin = {
  "address"=>"895 Shore Road, Pelham Bay Park",
  "site_type"=>"Outdoor ",
  "longitude"=>"-73.805549",
  "borough"=>"Bronx",
  "latitude"=>"40.871864",
  "park_site_name"=>"Barstow Mansion"}
```

Your job is to follow the tests in `spec/recycling_spec.rb` to pass the tests. It's also important to note that the output in terminal from these tests may not look like the other tests because of the use of an API. The tests still run the same way, and if you look at `spec/recycle_spec.rb`, the tests are all still written the same way. It's okay to be outside of your comfort zone!








<p data-visibility='hidden'>View <a href='https://learn.co/lessons/hs-intro-software-engineering-nyc-recycles' title='NYC Recycles'>NYC Recycles</a> on Learn.co and start learning to code for free.</p>
