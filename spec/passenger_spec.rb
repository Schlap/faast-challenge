require 'passenger'
require 'station'

describe Passenger do
	it "should be created after initializing" do
		passenger = Passenger.new
		expect(passenger).to be_created
	end

	it "should be able to enter station" do
		station = Station.new
		passenger = Passenger.new
		passenger.enter(station)
		expect(passenger.enter(station)).to eq(true)
	end
end