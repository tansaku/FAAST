require 'carriage'

describe Carriage do

  let(:carriage) {Carriage.new}
  let(:train) {double :train, :at_station? => true}
  let(:passenger) {double :passenger}

  it 'is empty when initialized' do
    expect(carriage).to be_empty
  end

  it 'is full when it has 40 passengers'do
    expect(carriage).to be_empty
    40.times { carriage.board(passenger) }
    expect{carriage.board(passenger)}.to raise_error "This Carriage is Full"
  end

  it 'when train is at station, carriage allows passenger to board' do
    train.at_station?
    carriage.board(passenger)
    expect(carriage.passengers).to eq(1)
  end

  it 'when train is at station, carriage allows passenger to alight'do
  train.at_station?
  carriage.board(passenger)
  carriage.alight(passenger)
  expect(carriage.passengers).to eq(0)
  end

end
