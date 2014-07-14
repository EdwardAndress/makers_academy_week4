require 'grid'

describe Grid do

	context 'starting the game' do

		it 'shows an empty square' do
			grid = Grid.new
			grid.view(:A1)
			expect(grid.view(:A1)).to eq " "
		end

		it 'should respond to the ruby "values" method' do
			grid = Grid.new
			expect(grid.create_board.values.join).to eq " "*100
		end
	end
end