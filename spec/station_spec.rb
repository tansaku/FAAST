require 'station'

describe Station do

  let(:station) {Station.new}
  let(:passenger) {double :passenger, :touch_in => true}
  let(:train) {double :train}

  it 'can hold touched in passengers'do
  passenger.touch_in
  station.hold_passengers(passenger)
  expect(station.touched_in_passengers).to eq 1
  end

  # it 'can hold trains' do
  #   expect(station.has_trains?).to be false
  #   station.add_train(train)
  #   expect(station.has_trains?).to be true
  # end

  it 'can only hold 1 train at a time' do
    expect(station.has_trains).to eq 0
    station.add_train(train)
    expect(station.has_trains).to eq 1
  end

    
    



end
