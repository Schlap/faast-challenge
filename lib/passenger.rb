class Passenger

	def created?
		@created = true
	end

	def enter(station)
		@inside_station = true
	end

	def touch_in(station)
		enter(station)
	end		

	def touch_out(station)
		enter(station)
	end

	def account
		@account = 20
	end

	def charge
		@account =-2
	end
end