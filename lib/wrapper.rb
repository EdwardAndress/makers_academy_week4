module Wrapper

def arrange_my_grid
	grid.map{|internal_array| internal_array.map{|cell| 
		if !cell.water?
			transform_ship_squares
		else cell.water?
			display_blank_squares
		end
	}}
end

def display_blank_squares
	cell="| |"

end

def transform_ship_squares
	cell="|S|"
end



def print_board
	arrange_my_grid.each{ |row| puts row.join }
end

def transform_misses
	cell="|M|"
end

def display_blank_for_ships
	grid.map{|internal_array| internal_array.map{|cell| 
		if cell.content!=:boat_hit || cell.content !=:miss
			display_blank_squares
		elsif cell.content == :boat_hit
			transform_ship_squares
		else
			transform_misses
		end

		}}
end

end