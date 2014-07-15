class Ship

	attr_accessor :size
	 
	def initialize
		@hits_count = 0
	end

	def hit!
		@hits_count += 1
	end

	def hits_count
		@hits_count
	end

	def sunk?
		hits_count == size
	end

end

class Submarine < Ship

	def initialize
		@size = 4
		@hits_count = 0
	end
end