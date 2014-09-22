class Train

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@passengers = []
	end

	def passenger_count
		@passengers.count
	end

	def alight(passenger)
		raise "Sorry, we're full!" if full?
		@passengers << passenger
	end

	def release(passenger)
		@passengers.delete(passenger)
	end

	def full?
		passenger_count == @capacity
	end
end