class Station

DEFAULT_CAPACITY = 12

def initialize
	@trains = []
end

def initialize(options = {})
	@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	@trains = []
end

def train_count
	@trains.count
end

def recieve(train)
	raise "Station cannot recieve anymore trains!" if full?
	@trains << train
end

def disembark(train)
	@trains.delete(train)
end

def full?
	train_count == @capacity
	end

#def train_times
	#@train_times = [trains_on_time = Train.new, trains_not_on_time = Train.new.late!]
	#end
end