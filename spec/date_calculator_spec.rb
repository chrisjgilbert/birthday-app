require 'date_calculator'

describe DateCalculator do

  subject(:date_calculator) { described_class.new(2019, 'november', 16) }

  it 'takes a month' do
    expect(date_calculator.month).to eq 'november'
  end

  it 'takes a day' do
    expect(date_calculator.day).to eq 16
  end

  it 'sets the year as 2018 by default' do
    expect(date_calculator.year).to eq 2019
  end

  describe '#calculate_days' do
    it 'calculates days between two dates' do
      expect(date_calculator.calculate_days).to eq 365
    end
  end

end
