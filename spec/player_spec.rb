require 'player'

describe 'Player' do

	let(:player) { Player.new(grid)    }
	

	it 'is initialize with 5 ship' do
		#expect(player.container.map(&:class)).to eq [Submarine, Aircraft_carrier, Cruiser, Battleship, Destroyer]
		player.fleet.each do |item|
			expect(item).to be_a Ship
		end
	end

end



=begin
	
	xit 'place the boat' do
		player =  Player.new
		expect(player).to be_ready_to_play
	end
	
	xit ' can place a boat ' do
		expect(grid).to receive(:deploy).with(:boat,:row,:col,:direction)
		player.place_this_boat_at(:boat,:row,:col,:direction)
	end

	xit 'can guess a shot' do
		cell= double :cell
		grid= double :grid,shot: 1
		expect(grid).to receive(:shot).with(1,6)
		player.shoot_to(1,6)
	end

	
=end