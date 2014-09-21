require 'train'


	describe Train do
it "should not be holding passengers in it after we create it" do
	train = Train.new
	expect(train).not_to be_holding_passengers
	end

it "should be able to disembark the station" do
	train = Train.new
	station = Station.new
	train.disembark(station)
	expect(train).not_to be_in_station

end
end