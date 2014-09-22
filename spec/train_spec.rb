require 'train'

describe Train do

let(:train){Train.new}

it "should be empty after we initialize it" do
	expect(train.passenger_count).to eq(0)
	end
end
