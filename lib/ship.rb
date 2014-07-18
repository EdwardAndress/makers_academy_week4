
class Ship

	attr_accessor :size
	 
	def initialize(size = nil)
		@size = size
		@hits_count = 0
	end

	def hit!
		@hits_count += 1
		puts "#{self.class} hit!"
	end

	def hits_count
		@hits_count
	end

	def sunk?
		hits_count == size
	end
	

end


class Submarine < Ship

	def initialize(size = 3)
		super
	end

end

class Cruiser < Ship

	def initialize(size = 3)
		super
	end

end
class Aircraft_carrier < Ship

	def initialize(size = 5)
		super
	end

end
class Battleship < Ship

	def initialize(size = 4)
		super
	end

end
class Destroyer < Ship

	def initialize(size = 2)
		super
	end

end