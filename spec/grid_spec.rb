require 'grid'

describe Grid do

	let(:grid) 	{Grid.new}
	let(:cell)		{double :cell}

	context 'starting the game' do

		it 'shows a cell' do
			grid.view(:A1)
			expect(grid.view(:A1)).to eq cell
		end

		it 'should respond to the ruby "values" method' do
			expect(grid.create_board.values.join).to eq " "*100
		end
	end
end