require 'station'

describe Station do

  context 'The station has the following responsibilities:'do

    let(:station) {Station.new}
    let(:passenger) {double :passenger, :touch_in => true}
    let(:train) {double :train}

    it 'can hold touched in passengers'do
      passenger.touch_in
      station.hold_passengers(passenger)
      expect(station.touched_in_passengers).to eq 1
    end

    it 'can only hold 1 train at a time' do
      station.train_arrives(train)
      expect{station.add_train(train)}.to raise_error
    end

    it 'allows trains to depart' do
      station.train_arrives(train)
      expect(station.has_train).to be 1
      station.train_departs(train)
      expect(station.has_train).to be 0
    end

  end

end
