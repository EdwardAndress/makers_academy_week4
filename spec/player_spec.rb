require 'player'

describe 'Player' do

	let(:player) { Player.new(grid)    }
	let(:grid) { double :grid   }
	

	it 'is initialize with 5 ship' do
		#expect(player.container.map(&:class)).to eq [Submarine, Aircraft_carrier, Cruiser, Battleship, Destroyer]
		player.fleet.each do |item|
			expect(item).to be_a Ship
		end
	end

end



