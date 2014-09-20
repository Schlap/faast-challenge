require 'train'


	describe Train do
it "should not be holding passengers in it after we create it" do
	train = Train.new
	expect(train).not_to be_holding_passengers
	end
end