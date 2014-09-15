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

	it ' changes the water to miss if a shot is taken on water' do
		cell.check_for_hit!
		expect(cell.content).to eq(:miss)
		
	end		
 	
 	it 'changes the contents of the cell to miss' do
 		cell.miss
 		expect(cell.content).to eq :miss
 	end 

end
