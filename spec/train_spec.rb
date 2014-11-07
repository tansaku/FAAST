require 'train'

describe Train do

  let(:train) {Train.new}

  it 'has carriages' do
    expect(train.has_carriages?).to be true
  end

  it 'can arrive at a station' do
    expect(train.arrived?).to be true
  end


end
