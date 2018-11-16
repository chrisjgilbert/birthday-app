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

  def self.create(year, month, day)
    @date = self.new(year, month, day)
  end

  def self.instance
    @date
  end

  def initialize(year, month, day, date_class = Date)
    @date_class = date_class
    @year = year
    @month = month
    @day = day
  end

  def calculate_days
    (birthday_date - todays_date).to_i
  end

  private

  def convert
    MONTH_NUMBERS[@month]
  end

  def birthday_date
    @date_class.new(@year.to_i, convert, @day.to_i)
  end

  def todays_date
    @date_class.today
  end

end
