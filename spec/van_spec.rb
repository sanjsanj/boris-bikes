require 'van'

describe Van do
  subject { described_class.new(capacity: 10) }

  it 'can set a default capacity on initialising' do
    expect(subject.capacity).to eq(10)
  end
end
