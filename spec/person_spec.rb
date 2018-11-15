require 'person'

describe Person do

  it 'has a name' do
    chris = described_class.new("chris")
    expect(chris.name).to eq "chris"
  end

end
