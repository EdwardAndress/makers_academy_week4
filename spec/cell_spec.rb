require 'cell'

describe do
	let(:cell)             { Cell.new }
	let(:ship)             { double :ship, size: 4, hit!: 2, hits_count: 0 }
	let(:submarine)        { Cell.new(Submarine)}

	it 'can have a content when created' do
		a1 = Cell.new
		sub = double :submarine
		a1.content = sub
		expect(a1.content).to eq sub
	end

	it 'water by default' do
		expect(cell).to be_water
	end

	it 'can be created with a boat' do
		ship  = double :ship
		a1 = Cell.new(ship)
		expect(a1.water?).to be false
	end

	it 'triggers the hit method on the ship' do
		ship  = double :ship
		a1 = Cell.new(ship)
		expect(ship).to receive :hit!
		a1.check_for_hit!
	end

	xit ' changes the water to miss if a shot is taken on water' do
		allow(cell.check_for_hit!).to receive(:miss)
		cell.check_for_hit!
	end		
 	
 	it 'changes the contents of the cell to miss' do
 		cell.miss
 		expect(cell.content).to eq :miss
 	end 
	# it 'a cell can be hit and target a boat' do
	# 	sub = double :ship, size: 4, hit!: 1
	# 	a2 = Cell.new(sub)
	# 	a2.hit_the_boat
	# 	expect(hits_count).to eq 1
	# end

	# xit 'knows when the ship is sunk ' do
	# 	4.times { ship.hit! }
	# 	expect(cell.sunk_ship).to 
	# end

end

=begin
	
	cell_with_ship = Cell.new(ship)
		allow(ship).to receive(:hit!)
		cell.hit_the_boat
		expect(Ship.hits_count).to eq 1
=end