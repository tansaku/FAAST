require './lib/train.rb'
require './lib/carriage.rb'
require './lib/station.rb'
require './lib/passenger.rb'

station1 = Station.new
station2 = Station.new

train1 = Train.new
train2 = Train.new

carriage1 = Carriage.new
carriage2 = Carriage.new
carriage3 = Carriage.new
carriage4 = Carriage.new

train1.add_carriage(carriage1)
train1.add_carriage(carriage2)

train2.add_carriage(carriage3)
train2.add_carriage(carriage4

p1 = Passenger.new(1)