require 'wrapper'

describe do
	it 'prints out water squares as "| |"' do
		jeans_grid = Grid.new
		expect(jeans_grid[0][0]).to eq '| |'
		jeans_grid.transform_water_sqaures
	end
end