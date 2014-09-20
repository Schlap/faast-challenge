require 'passenger'
require 'station'
require 'gantry'

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


	it "should be able to touch in at the gantry" do
		station = Station.new
		passenger = Passenger.new
		gantry = Gantry.new
		passenger.touch_in(gantry)
		expect(passenger.touch_in(gantry)).to eq(true)
	end
end