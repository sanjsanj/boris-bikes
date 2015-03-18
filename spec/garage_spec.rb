require 'garage'

describe Garage do
  subject { described_class.new(capacity: 20) }

  it 'can set a default capacity on initialising' do
    expect(subject.capacity).to eq(20)
  end

  
end
