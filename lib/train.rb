class Train

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@coach = []
	end

	def passenger_count
		@coach.count
	end

	def alight(passenger)
		raise "Sorry, we're full!" if full?
		@coach << passenger
	end

	def release(passenger)
		@coach.delete(passenger)
	end

	def full?
		passenger_count == @capacity
	end
end