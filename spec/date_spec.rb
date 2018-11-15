require 'date'

describe Date do

  subject(:date) { described_class.new(1, 8, 1988) }

  it 'has a day' do
    expect(date.day).to eq 1
  end

  it 'has a month' do
    expect(date.month).to eq 8
  end

  it 'has a year' do
    expect(date.year).to eq 1988
  end
end
