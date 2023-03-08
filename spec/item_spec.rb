require 'rspec'
require './lib/item'

RSpec.describe Item do
  describe '#Iteration 1'do
    it 'exists and has attributes' do
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

      expect(item1).to be_an_instance_of(Item)
    end


  end
end