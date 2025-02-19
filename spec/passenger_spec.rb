require './lib/passenger'

# This block helps format the test results
RSpec.configure do |config|
  config.formatter = :documentation
end

# Your tests should start here!
RSpec.describe Passenger do 
    before(:each) do
      @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
end

  it "is an instance of passenger" do
    expect(@charlie).to be_a Passenger
    expect(@taylor).to be_a Passenger
  end

  it "has a name" do
    expect(@charlie.name).to eq("Charlie")
  end

  it "has an age" do
    expect(@charlie.age).to eq(18)
  end

  it "is an adult" do
    expect(@charlie.adult?).to be true
    expect(@taylor.adult?).to be false
  end

  it "is a driver" do
    expect(@charlie.driver?).to be false
  end

  it "can become a driver" do
    @charlie.drive
    expect(@charlie.drive).to be true
  end
end
