require 'date'

class Book
  attr_accessor :id, :author, :title, :premiere, :age_restriction

  def initialize(id, author, title, premiere, age_restriction)
    @id = id
    @author = author
    @title = title
    @premiere = premiere
    @age_restriction = age_restriction
  end

  def to_s
    "#{author} #{title} #{premiere} #{age_restriction}"
  end
end
