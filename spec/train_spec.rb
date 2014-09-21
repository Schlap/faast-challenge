require 'train'

describe Train do
	
	it "should be empty after we create it" do
		train = Train.new
		expect(train).to be_empty
	end
end


