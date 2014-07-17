module Wrapper

def arrange_my_grid
	grid.map{|internal_array| internal_array.map{|cell| 
		if !cell.water?
			transform_ship_squares
		else cell.water?
			transform_water_squares
		end
	}}
end

def transform_water_squares
	cell="| |"

end

def transform_ship_squares
	cell="|S|"
end

def transform_misses
	grid.map{|internal_array|internal_array.map{|cell| cell="|M|"}} 
end

def print_board
	arrange_my_grid.each{ |row| puts row.join }
end

end