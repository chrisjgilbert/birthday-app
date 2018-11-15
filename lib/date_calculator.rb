require 'date'

class DateCalculator

  attr_reader :year, :month, :day

  def initialize(year = 2018, month, day)
    @year = year
    @month = month
    @day = day
  end

  def birthday_date
    @bithday = Date.new(@year, @month, @day).to_s
  end

  def todays_date
    @today = Date.today.to_s
  end

  def calculate_days
    (Date.new(@year, @month, @day) - Date.today)
  end

end
