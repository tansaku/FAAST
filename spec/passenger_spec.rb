require 'passenger'

describe Passenger do

    context 'The passenger has the following responsibilities:' do

    let(:passenger) {Passenger.new}
    let(:station) {double :station, :has_passengers? => true}

    it 'when initialized, they have zero funds' do
      expect(passenger.funds).to eq 0
    end

    it 'when initialized, they are not touched in' do
      expect(passenger.touched_in?).to be false
    end

    it ' must top up to have at least 2GBP before touching in'do
      passenger.top_up!(2)
      expect(passenger.funds).to eq 2
    end

    it 'cannot touch in unless they have 2GBP' do
      expect{passenger.touch_in}.to raise_error "Insufficient Funds"
    end

    it 'can touch into station' do
      passenger.top_up!(2)
      passenger.touch_in
      expect(station.has_passengers?).to be true
      expect(passenger).to be_touched_in
    end

    it 'can touch out of station' do
      passenger.touch_out
      expect(passenger.touched_in?).to be false
    end

  end
 
end