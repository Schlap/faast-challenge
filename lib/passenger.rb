class Passenger

	def created?
		@created = true
	end

	def enter(station)
		@inside_station = true
	end
end