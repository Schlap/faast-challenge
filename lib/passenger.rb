class Passenger

	def created?
		@created = true
	end

	def enter(station)
		@inside_station = true
	end

	def touch_in(gantry)
		enter(gantry)
	end		

	def touch_out(gantry)
		enter(gantry)
	end
end