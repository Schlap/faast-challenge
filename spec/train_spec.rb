require 'train'

describe Train do

let(:train){Train.new(:capacity => 40)}
let(:passenger) {double :passenger}

	it "should be empty after we initialize it" do
	expect(train.passenger_count).to eq(0)
	end

	it "should be able to alight passenger" do
	expect{train.alight(passenger)}.to change{train.passenger_count}.by 1
	end

	it "should be able to release passenger" do
	train.alight(passenger)
	expect{train.release(passenger)}.to change{train.passenger_count}.by -1
	end

	it "should know when it is full" do
	40.times{train.alight(passenger)}
	expect(train.full?).to eq(true)
	end
end
