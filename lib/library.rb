class Library
  attr_accessor :people, :accounts, :books, :rents

 @@people = []
 @@accounts= []
 @@books = []
 @@rents = []
 #------------------Person class--------------------
 def show_person(id)
     if !@@people.at(id).nil?
       puts "Person with id = #{@@people[id].id}: #{@@people[id]}"
     else
       puts "Person with id = #{id} doesn't appear in database."
     end
 end

  def add_person(firstname, lastname, country, age)
    size = @@people.size
    id = 0
    id += 1 while id < size && !@@people[id].nil?
    person = Person.new(id, firstname, lastname, country, age)
    @@people.insert(id, person)
    puts "Added new person to database:
    id - #{@@people[id].id},
    firstname - #{@@people[id].firstname},
    lastname - #{@@people[id].lastname},
    country - #{@@people[id].country}.
    age - #{@@people[id].age}"
  end

  def data_to_edit_person(id, firstname, lastname, country, age)
    @@people[id].firstname = firstname if firstname != ''
    @@people[id].lastname = lastname if lastname != ''
    @@people[id].country = country if country != ''
    @@people[id].age = age if country != ''
  end

  def edit_person(id, firstname, lastname, country, age)
    if !@@people.at(id).nil?
      insert_data_edit_person(id, firstname, lastname, country, age)
      puts "Person with id = #{@@people[id].id} has been updated."
    else
      puts "Person with id = #{id} doesn't appear in database."
    end
  end

  def remove_person(id)
    if !@@people.at(id).nil?
      @@people[id] = nil
      puts "Person with id = #{id} has been removed."
    else
      puts "Person with id = #{id} doesn't appear in database."
    end
  end
#---------------------Account class------------------------------
  def add_account(username, password, person)
   size = @@accounts.size
   id = 0
   id += 1 while id < size && !@@accounts[id].nil?
   account = Account.new(id, username, password, person)
   @@accounts.insert(id, account)
   puts "New account has been added:
   username - #{username},
   password - #{password}."
 end

 def show_account(id)
   if !@@accounts.at(id).nil?
     puts "Account on id = #{id}: #{@@accounts[id]}"
   else
     puts "Account on id = #{id} doesn't appear in database."
   end
 end

 def edit_username_password(id, username, password)
   @@accounts[id].username = username if username != ''
   @@accounts[id].password = password if password != ''
 end

 def edit_account(id, username, password)
   if !@@accounts.at(id).nil?
     @@accounts[id].person = @@people[id]
     edit_username_password(id, username, password)
     puts "Updated account on id = #{id}."
   else
     puts "Account on id = #{id} doesn't appear in database."
   end
 end

 def remove_account(id)
   if !@@accounts.at(id).nil?
     @@accounts[id] = nil
     remove_person(id)
     puts "Account with id = #{id} has been removed."
   else
     puts "Account with id = #{id} doesn't appear in database."
   end
 end
#-----------------------Books---------------------------

def add_book(author, title, premiere, age_restriction)
   size = @@books.size
   id = 0
   id += 1 while id < size && !@@books[id].nil?
   book = Book.new(id, author, title, premiere, age_restriction)
   @@books.insert(id, book)
   puts "Added new workout:
   id - #{id} ,
   author - #{author},
   title - #{title},
   premiere - #{premiere}.
   PG - +#{age_restriction}"
 end

 def data_to_edit_book(id, author, title, premiere, age_restriction)
   @@books[id].date = date unless date.nil?
   @@books[id].distance = distance if distance != ''
   @@books[id].duration = duration if duration != ''
 end

 def edit_workout(id, date, distance, duration)
   if !@@books.at(id).nil?
     insert_data_edit_workout(id, date, distance, duration)
     puts "Updated workout on id = #{id}."
   else
     puts "Workout on id = #{id} does not exist in database."
   end
 end

 def show_workout(id)
   if !@@books.at(id).nil?
     puts "Workout on id = #{id}:
     date = #{@@books[id].date} ,
     distance = #{@@books[id].distance} ,
     duration = #{@@books[id].duration}."
   else
     puts "Workout on id = #{id} does not exist in database."
   end
 end

 def remove_workout(id)
   if !@@books.at(id).nil?
     @@books[id] = nil
     puts "Removed workout on id = #{id}."
   else
     puts "Workout on id = #{id} does not exist in database."
   end
 end
