require 'garage'

describe Garage do
  subject { described_class.new(capacity: 20) }

  it 'can set a default capacity on initialising' do
    expect(subject.capacity).to eq(20)
  end

  it "can fix broken bikes" do
    garage = Garage.new
               # we need a couple bikes
    # Given    # one bike is broken
               # we need these bikes to be docked

    # When     # we fix the broken bikes

    # Then     # the broken bike should be fixed(should receive an instruction to fix)

    working_bike = double :working_bike, broken?: false
    broken_bike  = double :broken_bike,  broken?: true
    garage.dock(working_bike)
    garage.dock(broken_bike)

    expect(broken_bike).to receive(:fix)

    garage.fix_broken_bikes
  end
end
