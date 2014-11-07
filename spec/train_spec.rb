require 'train'

describe Train do

  let(:train) {Train.new}
  let(:carriage) {double :carriage}
  let(:station) {double :station}

  it 'has at least 2 carriages' do
    2.times { train.add_carriage(carriage) }
    expect(train.has_carriages).to eq 2
  end

  it 'can arrive at a station' do
    expect(train.at_station?).to be false
    train.arrives_at_station(station)
    expect(train.at_station?).to be true
  end


end
