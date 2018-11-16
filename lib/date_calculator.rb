require 'date'

class DateCalculator

  MONTH_NUMBERS = {
    'january' => 1,
    'february' => 2,
    'march' => 3,
    'april' => 4,
    'may' => 5,
    'june' => 6,
    'july' => 7,
    'august' => 8,
    'september' => 9,
    'october' => 10,
    'november' => 11,
    'december' => 12
  }

  attr_reader :year, :month, :day

  def initialize(year = 2018, month, day)
    @year = year
    @month = month
    @day = day
  end

  def calculate_days
    start_date = Date.new(@year, convert, @day)
    end_date = Date.today
    start_date - end_date
  end

  private

  def convert
    MONTH_NUMBERS[@month]
  end

end
