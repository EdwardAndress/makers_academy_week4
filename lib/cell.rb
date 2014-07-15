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
		return if water?
		content.hit!
	end

end