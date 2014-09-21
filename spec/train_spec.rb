require 'train'

describe Train do
	
	it "should be empty after we create it" do
		train = Train.new
		expect(train.passenger_count).to eq(0)
	end

	it "should have 4 coaches after we initialize it" do
		train = Train.new 
		expect(train.coaches).to eq([[],[],[],[]])
end
end


