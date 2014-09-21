require 'gantry'

describe gantry do

it "should be in station after we initialize it" do
	gantry = Gantry.new
	gantry.enter(station)
	expect(gantry.enter(station)).to eq(true)
	end
end