class Station

DEFAULT_CAPACITY = 20

def initialize
	@trains = []
end

def station_capacity
@capacity = DEFAULT_CAPACITY
	end

def train_count
	@trains.count
end

def recieve(train)
	@trains << train
end

def disembark(train)
	@trains.delete(train)
	end
end