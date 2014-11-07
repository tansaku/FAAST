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

  it 'can hold trains' do
    expect(station.has_trains?).to be false
    station.has_train!
    expect(station.has_trains?).to be true

  end




end
