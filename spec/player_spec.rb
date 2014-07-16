require 'player'

describe 'Player' do

	let(:grid) { double :grid }
	xit 'place the boat' do
		player =  Player.new
		expect(player).to be_ready_to_play
	end
	
	it ' can place a boat ' do
	player = Player.new(grid)
	expect(grid).to receive(:deploy).with(:boat,:row,:col,:direction)
	player.place_this_boat_at(:boat,:row,:col,:direction)
	end

	xit 'can guess a shot' do
		player = Player.new(grid)
		cell= double :cell
		grid= double :grid
		allow(player).to receive(:shoot_to).with(coordinate_1,coordinate_2)
		expect(grid.shoot!).with(coordinate_1,coordinate_2)
	end

end	