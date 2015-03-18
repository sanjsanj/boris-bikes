require 'bike'
describe Bike do
  it { is_expected.to respond_to :broken? }
  context 'when created' do
    it { is_expected.to_not be_broken }
  end
  it 'can break' do
    subject.break
    expect(subject).to be_broken
  end

  it 'can be fixed' do
    subject.break
    subject.fix
    expect(subject).not_to be_broken
    # Given # we have a broken bike
    # When  # we fix it
    # Then  # the bike should be fixed
  end

end
