class Book
  attr_accessor :author, :title, :date_out, :age_restriction

  def initialize(id, author, title, date_out, age_restriction)
    @id = id
    @author = author
    @title = title
    @date_out = date_out
    @age_restriction = age_restriction
  end

  def to_s
    "#{author} #{title} - premiera: #{date_out} wiek: +#{age_restriction}"
  end
end
