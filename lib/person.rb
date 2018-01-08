class Person
  attr_accessor :id, :firstname, :lastname, :country, :age

  def initialize(id, firstname, lastname, country, age)
    @id = id
    @firstname = firstname
    @lastname = lastname
    @country = country
    @age = age
  end

  def to_s
    "#{firstname} #{lastname} - #{country} - #{age}"
  end
end
