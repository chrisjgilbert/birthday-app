class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @person = self.new(name)
  end

  def self.instance
    @person
  end

end
