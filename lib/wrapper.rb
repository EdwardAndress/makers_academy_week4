module Wrapper

def transform_water_squares
grid.map{|internal_array|internal_array.map{|cell| cell="| |"}} 

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