require 'open-uri'
require 'json'
require 'pry'
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE 

require 'spec_helper.rb'

describe 'nyc recycles' do 

  before(:each) do
  
    raw_data = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json").read

    parsed_data = JSON.parse(raw_data)

    @first_recycling_bin = parsed_data[0]
    @second_recycling_bin = parsed_data[1]
    @third_recycling_bin = parsed_data[2]
    @fourth_recycling_bin = parsed_data[3]

  end

  describe '#address' do
    it "returns the address of the recycling bin" do
      expect(address(@first_recycling_bin)).to eq(@first_recycling_bin[:address])
      expect(address(@third_recycling_bin)).to eq(@third_recycling_bin[:address])

    end
  end

  describe '#borough' do
    it 'returns the borough of the recycling bin' do
      expect(borough(@second_recycling_bin)).to eq(@second_recycling_bin[:borough])
      expect(borough(@fourth_recycling_bin)).to eq(@fourth_recycling_bin[:borough])
    end
  end

  describe '#all_keys' do
    it 'prints out all the keys in the hash using the each_keys method so you know what data points you have' do
      output = capture_stdout { all_keys(@third_recycling_bin) }
      expect(output).to eq output
    end
  end

  describe '#all_data' do
    it 'prints all the values of the hash so we can see the pieces of data using the each_value method' do
      output = capture_stdout { all_data(@second_recycling_bin) }

      expect(output).to eq  capture_stdout { all_data(@second_recycling_bin) }
    end
  end

  # describe '#amounts' do
  #   it 'prints the amounts of each ingredient' do
  #     output = capture_stdout { amounts(@mac_and_cheese_ingredients) }
  #     expect(output).to eq "2 cups\n1/2 stick\n1 cup\n3 cups\n"
  #   end
  # end

  # describe '#number_ingredients' do
  #   it 'returns the total number of ingredients' do
  #     expect(number_ingredients(@mac_and_cheese_ingredients)).to eq 4
  #   end
  # end
  
end