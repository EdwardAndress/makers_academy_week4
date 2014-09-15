require 'player'

describe 'Player' do

	let(:player) { Player.new(grid)    }
	let(:grid) { double :grid   }
	

	it 'is initialized with 5 ship' do
		player.fleet.each do |item|
			expect(item).to be_a Ship
		end
	end

end



