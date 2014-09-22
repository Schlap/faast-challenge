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
end