require 'date_calculator'

describe DateCalculator do

  subject(:date_calculator) { described_class.new(2019, 11, 15) }

  it 'takes a month' do
    expect(date_calculator.month).to eq 11
  end

  it 'takes a day' do
    expect(date_calculator.day).to eq 15
  end

  it 'sets the year as 2018 by default' do
    expect(date_calculator.year).to eq 2019
  end

  describe '#birthday' do
    xit 'sets the birthay as a date object' do
      expect(date_calculator.birthday).to eq true
    end
  end

  describe '#todays_date' do
    xit 'sets todays date' do
      expect(date_calculator.todays_date).to eq Date.today
    end
  end

  describe '#calculate_days' do
    it 'calculates days between two dates' do
      expect(date_calculator.calculate_days).to eq 365
    end
  end


end
