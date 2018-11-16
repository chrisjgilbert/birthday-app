require 'date_calculator'

describe DateCalculator do

  subject(:date_calculator) { described_class.new(year, month, day) }

  let(:year) { double(:year) }
  let(:month) { double(:month) }
  let(:day) { double(:day) }

  it 'takes a month' do
    expect(date_calculator.month).to eq month
  end

  it 'takes a day' do
    expect(date_calculator.day).to eq day
  end

  it 'sets the year as 2018 by default' do
    expect(date_calculator.year).to eq year
  end

  describe '#days_until_birthday' do
    it 'calculates days between two dates' do
      allow(date_calculator).to receive(:birthday_date).and_return(Date.today.next_day(10))
      allow(date_calculator).to receive(:todays_date).and_return(Date.today)
      expect(date_calculator.days_until_birthday).to eq 10
    end
  end

  describe '#birthday?' do
    it 'returns true if today is your birthday' do
      allow(date_calculator).to receive(:days_until_birthday).and_return(0)
      expect(date_calculator.birthday?).to eq true
    end

    it 'returns false if today is not your birthday' do
      allow(date_calculator).to receive(:days_until_birthday).and_return(1)
      expect(date_calculator.birthday?).to eq false
    end
  end
end
