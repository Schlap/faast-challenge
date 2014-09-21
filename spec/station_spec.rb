require 'station'
require 'passenger'
require 'train'

describe Station do
	it "should have a train capacity of 20 trains after initializing" do
		station = Station.new
		expect(station.station_capacity).to eq(20)
	end

	it "should be able to recieve trains" do
		train = Train.new
		station = Station.new
		expect(station.train_count).to eq(0)
		station.recieve(train)
		expect(station.train_count).to eq(1)
	end
end