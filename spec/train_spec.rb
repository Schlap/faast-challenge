require 'train'
require 'passenger'

describe Train do
	
	it "should be empty after we create it" do
		train = Train.new
		expect(train.passenger_count).to eq(0)
	end

	it "should have 4 coaches after we initialize it" do
		passenger = Passenger.new
		train = Train.new 
		expect(train.coaches(passenger)).to eq([[],[],[],[]])
	end

	it "should be able to alight passengers" do 
		train = Train.new
		passenger = Passenger.new
		train.alight(passenger)
		expect(train.passenger_count).to eq(0)
	end
end


