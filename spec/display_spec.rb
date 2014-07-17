require 'display'

describe 'Display' do

	xit '' do
		grid = double :grid
		player = Player.new(grid)
		expect(grid.player).to be_a Player
	end

end