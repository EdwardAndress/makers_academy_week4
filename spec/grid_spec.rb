require 'grid'

describe Grid do

	let(:eddys_grid) 	{ Grid.new }

	context 'create grid' do
		it 'is an Array' do
			expect(eddys_grid.grid.is_a?(Array)).to be true
		end

		it 'contains 10 arrays' do
			expect(eddys_grid.grid.count).to eq 10
		end

		it 'it contains 100 elements in total' do  
			expect(eddys_grid.grid.flatten.count).to eq 100
		end

		it ' each element in the primary array is also an array' do 
			eddys_grid.grid.each do |row|
				expect(row.is_a?(Array)).to be true
			end	
		end

		it 'has 100 cell objects' do
			eddys_grid.grid.flatten.each do |cell|
				expect(cell.class).to eq Cell
			end
		end
	end

	# context 'transfer player inputs' do 
	# 	it 'takes a shot' do
	# 		eddys_grid.shot(1, 1)
	# 		expect(eddys_grid.grid[1][1]).to recieve(:hit_the_boat)
	# 	end
	# end

end