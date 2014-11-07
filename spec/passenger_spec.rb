require 'passenger'

describe Passenger do

  let(:passenger) {Passenger.new}
  let(:station) {double :station, :has_passengers? => true}

  it 'can touch into station' do
    passenger.touch_in
    expect(station.has_passengers?).to be true
    expect(passenger).to be_touched_in
  end

  it 'can touch out of station' do
    passenger.touch_out
    expect(passenger.touched_in?).to be false
  end


end