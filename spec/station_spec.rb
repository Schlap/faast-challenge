require 'station'
require 'passenger'
require 'train'

describe Station do

	def fill_station(station)
		20.times{station.recieve(train)}
	end

	let(:train) {Train.new}
	let(:station) {Station.new(:capacity => 20)}

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

	it "should know when it's full" do
		expect(station).not_to be_full
		fill_station(station)
		expect(station).to be_full
	end

	it "should not accept a train if it's full" do
		fill_station(station)
		expect{station.recieve(train)}.to raise_error(RuntimeError)
	end
end