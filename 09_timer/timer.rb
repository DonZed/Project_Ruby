class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		t = @seconds
		mm, ss = t.divmod(60)
		hh, mm = mm.divmod(60)
		"%02d:%02d:%02d" % [hh, mm, ss]
	end
end