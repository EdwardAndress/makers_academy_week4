require 'wrapper'

describe Wrapper do
	it 'prints out water squares as "| |"' do
		jeans_grid = Grid.new
		transformed = jeans_grid.transform_water_squares
		expect(transformed[0][0]).to eq("| |")
		
	end
end