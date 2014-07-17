require 'display'

describe 'Display' do

	it '' do
		grid = double :grid
		player = Player.new(grid)
		expect(grid.player).to be_a Player
	end

end