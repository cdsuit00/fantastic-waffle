require './lib/passenger'
require './lib/vehicle'

RSpec.configure do |config|
    config.formatter = :documentation
  end



  RSpec.describe Vehicle do 
    before(:each) do
      @vehicle = Vehicle.new("2001", "Honda", "Civic")
    end

    it "is an instance of a vehicle" do
        expect(@vehicle).to be_a Vehicle
    end

    it "has a year" do
        expect(@vehicle.year).to eq("2001")
    end

    it "has a make" do
        expect(@vehicle.make).to eq("Honda")
    end

    it "has a model" do
        expect(@vehicle.model).to eq("Civic")
    end

    it "is speeding" do
        expect(@vehicle.speeding?).to eq false
    end

    it "can change speed" do
        @vehicle.speed
        expect(@vehicle.speeding?).to eq true
    end

    it "starts with no passengers" do
        expect(@vehicle.passengers).to eq([])
    end

    it "can add passengers" do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        @jude = Passenger.new({"name" => "Jude", "age" => 20})    
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        @vehicle.add_passenger(@charlie)    
        @vehicle.add_passenger(@jude)    
        @vehicle.add_passenger(@taylor)  

        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end

    it "knows the number of adult passengers" do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
        @jude = Passenger.new({"name" => "Jude", "age" => 20})    
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

        @vehicle.add_passenger(@charlie)    
        @vehicle.add_passenger(@jude)    
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.num_adults).to eq(2)
    end
end
