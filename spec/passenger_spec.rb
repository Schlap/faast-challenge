require 'passenger'
require 'station'
require 'gantry'

describe Passenger do

	let(:station) {Station.new}
	let(:passenger) {Passenger.new}
	let(:gantry) {Gantry.new}

	it "should be created" do
		expect(passenger).to be_created
	end

	it "should be able to enter the station" do
		passenger.enter(station)
		expect(passenger.enter(station)).to eq(true)
	end


	it "should be able to touch in at a gantry" do
		passenger.touch_in(gantry)
		expect(passenger.touch_in(gantry)).to eq(true)
	end
end