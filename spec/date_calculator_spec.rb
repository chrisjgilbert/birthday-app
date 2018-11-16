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

  describe '#days_until_birthday' do
    it 'calculates days between two dates' do
      expect(date_calculator.days_until_birthday).to eq 365
    end
  end

  describe '#birthday?' do
    it 'returns true if today is your birthday' do
      date_cal = described_class.new(2018, 'november', 16)
      expect(date_cal.birthday?).to eq true
    end
  end
end
