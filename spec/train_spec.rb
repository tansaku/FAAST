require 'train'

describe Train do

  context 'The train has the following responsibilities' do

    let(:train) {Train.new}
    let(:carriage) {double :carriage}
    let(:station) {double :station}

    it 'has at least 2 carriages' do
      2.times { train.add_carriage(carriage) }
      expect(train.has_carriages).to eq 2
    end

    it 'knows when it is at a station' do
      train.arrives_at(station)
      expect(train.at_station).to eq 1
    end

    it 'can arrive at a station' do
      expect(train.at_station).to eq 0
      train.arrives_at(station)
      expect(train.at_station).to eq 1
    end

    it 'can depart from a station' do
      train.arrives_at(station)
      expect(train.at_station).to eq 1
      train.departs_from(station)
      expect(train.at_station).to eq 0
    end

  end

end
