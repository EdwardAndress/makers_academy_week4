# require './lib/ship'

class Cell

	def initialize(content = :water)
		@content = content
	end

	def content
		@content
	end

	def water?
		@content == :water
	end

	def hit_the_boat
		content.hit!
	end




end