class Train

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@coach0 = []
		@coach1 = []
		@coach2 = []
	end

	def passenger_count
		@coach0.count
		@coach1.count
		@coach2.count
	end

	def alight(passenger)
		raise "Sorry, we're full!" if full?
		@coach0 << passenger
		@coach1 << passenger
		@coach2 << passenger

	end

	def release(passenger)
		@coach0.delete(passenger)
		@coach1.delete(passenger)
		@coach2.delete(passenger)
	end

	def full?
		passenger_count == @capacity
	end
end