require 'ship'
require 'player'
describe 'Ship' do
	let(:ship)      { Ship.new      }
	let(:submarine) { Submarine.new }
	let(:player)		{ Player.new}

	it 'can be hit' do
		ship = Ship.new
		ship.hit!
		expect(ship.hits_count).to eq 1 
	end

	it"can receive another hit" do
		2.times { ship.hit! }
		expect(ship.hits_count).to eq 2
	end

	it 'when it is initialized it has no hits' do
		expect(ship.hits_count).to eq 0
	end

	it 'it has a size' do
	largeShip = Ship.new
	largeShip.size = 4
	expect(largeShip.size).to eq 4
	end

	it 'can be sunk' do
		3.times {submarine.hit!}
		expect(submarine).to be_sunk
	end


	
	context 'Subclasses' do

		it 'can be a submarine' do
			expect(submarine.size).to eq 3
		end

	end

end