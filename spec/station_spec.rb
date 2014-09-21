require 'station'
require 'passenger'
require 'train'

describe Station do

	let(:train) {Train.new}
	let(:station) {Station.new}

	it "should have a train capacity of 20 trains after initializing" do
		expect(station.station_capacity).to eq(20)
	end

	it "should be able to recieve trains" do
		expect(station.train_count).to eq(0)
		station.recieve(train)
		expect(station.train_count).to eq(1)
	end
	it "should be able to disembark train" do
		station.recieve(train)
		station.disembark(train)
		expect(station.train_count).to eq(0)
	end
end