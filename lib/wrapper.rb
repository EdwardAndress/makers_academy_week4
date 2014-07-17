module Wrapper

def display_my_grid
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


# def shootingGrid
# #shows 2nd player grid

# # @gridPlayer2.map{|internal_array|internal_array.map{|cell| 
# # if cell.content==water?  
# # cell=cell.content=:Water
# # elsif cell.content==boat
# # cell=cell.content=:Water
# # elsif cell.content==hit?
# # cell=cell.content=:hit
# # end
# # }}

end