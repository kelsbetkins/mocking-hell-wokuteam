class Account
  attr_accessor :id, :username, :password, :person

  def initialize(id, username, password, person)
    @id = id
    @username = username
    @password = password
    @person = person
  end

  def to_s
    "#{username} #{password} - #{person}"
  end
end
