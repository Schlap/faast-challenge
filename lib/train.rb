class Train

	def initialize
		@passengers = []
	end

	def passenger_count
		@passengers.count
	end

	def alight(passenger)
		@passengers << passenger
	end

	def release(passenger)
		@passengers.delete(passenger)
	end
end