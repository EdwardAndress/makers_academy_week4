#require './lib/ship'

class Cell

	attr_accessor :content

	def initialize(status = :water)
		@content = status
	end

	def water?
		content == :water
	end

	def check_for_hit!
		return miss if water?
		content.hit!
	end

	def miss
		content == :miss
	end

end