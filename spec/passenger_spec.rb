require 'passenger'

describe Passenger do

	let(:station) {double :station, charge: true}
	let(:passenger) {Passenger.new}

	it "should be created" do
		expect(passenger).to be_created
		end

		it "should be able to enter the station" do
		passenger.enter(station)
		expect(passenger.enter(station)).to eq(true)
		end


		it "should be able to touch in at a station" do
		passenger.touch_in(station)
		expect(passenger.touch_in(station)).to eq(true)
		end

		it "should be able to touch out at a station" do
		passenger.touch_out(station)
		expect(passenger.touch_out(station)).to eq(true)
		end

		it "should be able to charge passengers at station" do
		expect(passenger.account).to eq(20)
		station.charge(passenger)
		end
end