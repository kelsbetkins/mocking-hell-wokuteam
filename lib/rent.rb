require 'date'
require 'time'

class Rent
  attr_accessor :id, :account, :book, :date_away, :date_back, :fine

  def initialize(id, account, book, date_away, date_back, fine)
    @id = id
    @account = account
    @book = book
    @date_away = date_away
    @date_back = date_back
    @fine = fine
  end
#  Time.now.strftime("%m/%d/%Y")
  def to_s
    "#{account.username}; #{date_away} - #{date_back}; #{book.title} #{book.author}; #{fine}"
  end
end
