require 'rspec'
require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  describe '#Iteration 2' do
    it 'exists and has attributes' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")

      expect(food_truck).to be_an_instance_of(FoodTruck)
      expect(food_truck.name).to eq("Rocky Mountain Pies")
      expect(food_truck.inventory).to eq({})


    end
  end







end


