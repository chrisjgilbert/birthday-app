class Person

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @person = Person.new(name)
  end

  def self.instance
    @person
  end

end
