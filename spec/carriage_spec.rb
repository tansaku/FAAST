require 'carriage'

describe Carriage do

  context 'The Carriage has the following responsibilities' do

    let(:carriage) {Carriage.new}
    let(:train) {double :train, :at_station => true}
    let(:passenger) {double :passenger }
    let(:train_in_transit) {double :train, :at_station => 0}

    it 'is empty when initialized' do
      expect(carriage).to be_empty
    end


    it 'when train is at station, can receive a passenger' do
      expect(train.at_station).to be true
      carriage.receive(passenger, train)
      expect(carriage.passengers_count).to eq(1)
    end

    it 'when train is at station,  carriage allows passenger to alight' do
      expect(train.at_station).to be true
      carriage.receive(passenger, train)
      carriage.alight(passenger, train)
      expect(carriage.passengers_count).to eq(0)
    end

    it 'Raise error when passenger boards when train not in station' do
      allow(train).to receive(:at_station).and_return 0
      expect(train_in_transit.at_station).to eq 0
      expect{carriage.receive(passenger, train)}.to raise_error "Train not in Station!!!"
    end

    it 'Raise error when passenger alights when train not in station' do
      allow(train).to receive(:at_station).and_return 0
      expect(train_in_transit.at_station).to eq 0
      expect{carriage.alight(passenger, train)}.to raise_error "Train not in Station!!!"
    end

    it 'is full when it has 40 passengers' do
      40.times {carriage.receive(passenger, train)}
      expect(carriage).to be_full
    end

  end

end
