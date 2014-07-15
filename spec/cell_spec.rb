require 'cell'
require 'ship'

describe do
	let(:cell) { Cell.new }
	let(:ship) { double :ship, size: 4, hit!: 2, hits_count: 0 }
	let(:cell_ship) { Cell.new(ship) }
	let(:submarine) { Cell.new(Submarine)}

	it 'can have a content when created' do
		expect(cell_ship).to eq ship
	end

	it' it can be empty' do
		expect(cell).to be_empty
	end

	it 'empty when it is initialized' do
		expect(cell.content).to eq nil
	end

	it ' can be created with a boat' do
		grid = double :grid
		A1 = Cell.new(ship = :boat)
		expect(A1.water?).to be false
	end

	it 'a cell can be hit and target a boat' do
		submarine= double :submarine
		cell_ship =Cell.new(submarine)
		expect(submarine).to receive(:hit!)
		cell_ship.hit_the_boat
	end

	it 'knows when the ship is sunk ' do
		4.times { ship.hit! }
		expect(cell.sunk_ship).to 
	end

end

=begin
	
	cell_with_ship = Cell.new(ship)
		allow(ship).to receive(:hit!)
		cell.hit_the_boat
		expect(Ship.hits_count).to eq 1
=end