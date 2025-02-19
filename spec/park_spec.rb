require './lib/passenger'
require './lib/vehicle'
require './lib/park'

RSpec.configure do |config|
    config.formatter = :documentation
end


  RSpec.describe Park do 
    before(:each) do
      @park = Park.new("Great Sand Dunes", 30,)
    end

      it "is an instance of park" do
        expect(@park).to be_a Park
      end
    
      it "has a name" do
        expect(@park.name).to eq("Great Sand Dunes")
      end
    
      it "has a price" do
        expect(@park.price).to eq(30)
      end

      it "starts with no vehicle at the park"
        expect(@park.vehicle).to eq([])
      end
      














