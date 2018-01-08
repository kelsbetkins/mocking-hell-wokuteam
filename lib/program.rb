require_relative 'person'
require_relative 'account'
require_relative 'book'
require_relative 'rent'
require_relative 'libary'

class Program

    @@person = []
    @@account = []
    @@book = []
    @@rent = []

    def initialize
      start
      menu_action
    end

    def menu
      puts '===!~~ Menu ~~!==='
      puts '1 :: Uzytkownicy'
      puts '2 :: Ksiazki'
      puts '3 :: Osoby'
      puts '4 :: Autorzy'
      puts '5 :: Koniec'
    end

    def users_submenu
      puts '    1 -> Pokaz szczegoly'
      puts '    2 -> Edytuj uzytkownika'
      puts '    3 -> Usun osobe'
    end

    def book_submenu
      puts '    1 -> Pokaz szczegoly'
      puts '    2 -> Edytuj ksiazke'
      puts '    3 -> Usun ksiazke'
    end

    def person_submenu
      puts '    1 -> Pokaz szczegoly'
      puts '    2 -> Edytuj osobe'
      puts '    3 -> Usun osobe'
    end

    def authors
      puts 'Autorzy:'
      puts 'Adrian Rybandt'
      puts 'Wiktor Przybylowski'
    end

    def next_step
      puts 'Wybierz opcje: '
    end

    def command_not_found
      puts 'Nie rozpoznano komendy'
    end

    def show_user
      puts 'Wprowadz ID uzytkownika:'
      id = gets.chomp
      @program.show_account(id.to_i)
      next_step
      gets.chomp
    end

    def edit_user
      puts 'Wprowadz ID uzytkownika:'
      id = gets.chomp
      puts 'Podaj login:'
      login = gets.chomp
      puts 'Podaj haslo:'
      password = gets.chomp
      @program.edit_account(id,login,password)
      next_step
      gets.chomp
    end

    def remove_user
      puts 'Wprowadz ID uzytkownika:'
      id = gets.chomp
      @program.remove_account(id.to_i)
      next_step
      gets.chomp
    end

    def show_book
      puts 'Wprowadz ID ksiazki:'
      id = gets.chomp
      @program.show_book(id.to_i)
      next_step
      gets.chomp
    end

    def edit_book
      puts 'Wprowadz ID ksiazki:'
      id = gets.chomp
      puts 'Podaj nazwe:'
      title = gets.chomp
      puts 'Podaj tytul:'
      author = gets.chomp
      @program.edit_book(id,author,title)
      next_step
      gets.chomp
    end

    def remove_book
      puts 'Wprowadz ID ksiazki:'
      id = gets.chomp
      @program.remove_book(id.to_i)
      next_step
      gets.chomp
    end

    def show_person
      puts 'Wprowadz ID osoby:'
      id = gets.chomp
      @program.show_person(id.to_i)
      next_step
      gets.chomp
    end

    def edit_person
      puts 'Wprowadz ID osoby:'
      id = gets.chomp
      puts 'Podaj imie:'
      login = gets.chomp
      puts 'Podaj nazwisko:'
      password = gets.chomp
      @program.edit_person(id,firstname,lastname)
      next_step
      gets.chomp
    end

    def remove_person
      puts 'Wprowadz ID osoby:'
      id = gets.chomp
      @program.remove_person(id.to_i)
      next_step
      gets.chomp
    end

    def menu_action
    loop do
      menu
      input = gets.chomp
      case input
      when '1'
        users_submenu
        case gets.chomp
        when '1'
          show_user
        when '2'
          edit_user
        when '3'
          remove_user
        else
          command_not_found
        end
      when '2'
        book_submenu
        case gets.chomp
        when '1'
          show_book
        when '2'
          edit_book
        when '3'
          remove_book
        else
          command_not_found
        end
      when '3'
        person_submenu
        case gets.chomp
        when '1'
          show_person
        when '2'
          edit_person
        when '3'
          remove_person
        else
          command_not_found
        end
      when '4'
        authors
      when '5'
        exit
      else
        command_not_found
      end
      puts ' '
      puts ' '

      next_step
      break if input.chomp == '6'
    end
  end

  def create_person
    @@person[0] = @program.add_person('Janusz', 'Tracz', 'Polska', 39)
    @@person[1] = @program.add_person('Kajtek', 'Wokulski', 'Polska', 27)
  end

  def create_account
    @@account[0] = @program.add_account('DoctorCocktor123', 'haslo123', @@person[0])
    @@account[1] = @program.add_account('YrMomIsFat', 'AnDestroyer666', @@person[1])
  end

  def create_book
    @@book[0] = @program.add_book('Peter V. Brett', 'Malowany Czlowiek', 2016-01-03, 18)
    @@book[1] = @program.add_book('Norman Davies', 'Serce Europy', 2010-01-01, 8)
  end

  def create_rent
    @@rent[0] = @program.add_rent(@@account[0], @@book[0], 2016-01-01, 2016-02-01, 0)
    @@rent[1] = @program.add_rent(@@account[1], @@book[1], 2013-02-06, 2013-05-07, 0)
  end

end
