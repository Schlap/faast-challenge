require 'passenger'

describe Passenger do
	it "should be created after initializing" do
		passenger = Passenger.new
		expect(passenger).to be_created
end
end