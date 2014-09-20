require 'station'
require 'passenger'

describe Station do
	it "should have a train capacity of 20 trains after initializing" do
		station = Station.new
		expect(station.station_capacity).to eq(20)
	end
end