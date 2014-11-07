require 'train'

describe Train do

  let(:train) {Train.new}
  let(:carriage) {double :carriage}

  it 'has at least 2 carriages' do
    2.times { train.add_carriage(carriage) }
    expect(train.has_carriages(carriage)).to eq 2
  end

  it 'can arrive at a station' do
    expect(train.at_station?).to be true
  end


end
