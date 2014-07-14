class Grid

	def view(coordinates)
		" "
	end

def create_board
	board ={}
	("A".."J").to_a.each{|row| (1..10).to_a.each{|column| board["#{row}#{column}"] = " "}}
	board

end

end