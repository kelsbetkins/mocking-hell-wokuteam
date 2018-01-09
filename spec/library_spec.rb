require_relative '../lib/library.rb'
require_relative '../lib/person.rb'
require_relative '../lib/account.rb'
require_relative '../lib/book.rb'
require_relative '../lib/rent.rb'

RSpec.describe 'Library' do
  subject(:library) { Library.new }

  describe '#add_person' do
    it {
      firstname = 'Mikolaj'
      lastname = 'Rynko'
      country = 'Polska'
      age = 15
        expect { library.add_person(firstname, lastname, country, age) }.not_to raise_error
    }

    it {
      firstname = 'Blazej'
      lastname = 'Nazwiskowe'
      country = 'England'
      age = 26
        expect { library.add_person(firstname, lastname, country, age) }.not_to raise_error
    }
  end

  describe '#data_to_edit_person' do
    it {
      id = 0
      firstname = 'Maciek'
      lastname = 'Zwierzak'
      country = 'USA'
      age = 21
      expect { library.data_to_edit_person(firstname, lastname, country, age)}.not_to raise_error
    }

    it {
      id = 1
      firstname = 'Imie'
      lastname = 'Nazwisko'
      country = 'Kraj'
      age = 67
      expect { library.data_to_edit_person(firstname, lastname, country, age)}.not_to raise_error
    }
  end

  describe '#edit_person' do
    it {
      id = 0
      age = 17
      expect {library.edit_person(id,'','','',age)}.not_to raise raise_error
    }
    it {
        id = 0
        firstname = 'Jeff'
        lastname = 'Johnson'
        expect { library.edit_person(id, firstname, lastname,'','') }.not_to raise_error
      }
      it {
        id = 1
        firstname = 'Jeff'
        lastname = 'Johnson'
        country = 'Sweden'
        age = 26
        expect { library.edit_person(id, firstname, lastname, country, age) }.not_to raise_error
      }
  end

    describe '#show_person' do
      it { expect { library.show_person(0) }.not_to raise_error }
      it { expect { library.show_person(1) }.not_to raise_error }
    end

    describe '#remove_person' do
      it { expect { library.remove_person(0) }.not_to raise_error }
      it { expect { library.remove_person(1) }.not_to raise_error }
    end

    describe '#add_account' do
    it {
      login = 'kek123'
      password = 'haslo'
      firstname = 'Alison'
      lastname = 'Jones'
      country = 'USA'
      age = 17
      person = double('Person', id: 0, firstname: firstname, lastname: lastname, country: country, age: age)
      expect { library.add_account(login, password, person) }.not_to raise_error
    }
    it {
      login = 'dobrygracz'
      password = 'KasiaKochamCie'
      firstname = 'Robert'
      lastname = 'Pokrzywniak'
      country = 'Polska'
      person = double('Person', id: 1, firstname: firstname, lastname: lastname, country: country, age: age)
      expect { library.add_account(login, password, person) }.not_to raise_error
    }
    end

    describe '#show_account' do
     it { expect { library.show_account(0) }.not_to raise_error }
     it { expect { library.show_account(1) }.not_to raise_error }
    end

    describe '#edit_account' do
      it {
        id = 0
        login = 'MaciusKochamCie'
        expect { library.edit_account(id, login, '') }.not_to raise_error
      }
      it {
        id = 1
        password = 'Haselko'
        expect { library.edit_account(id, '', password) }.not_to raise_error
      }
      it {
        id = 1
        login = 'MBronk231'
        password = 'Lelelele'
        expect { library.edit_account(id, login, password) }.not_to raise_error
      }
    end

    describe '#remove_account' do
      it { expect { library.remove_account(0) }.not_to raise_error }
      it { expect { library.remove_account(1) }.not_to raise_error }
    end

    describe '#add_book' do
      it {
        author = 'Mikolaj Kopernik'
        title = 'Zwierzeta slodko wodne'
        premiere = Date.parse('2013-12-05')
        age_restriction = 17
        expect { library.add_book(author, title, premiere, age_restriction) }.not_to raise_error
      }

      it {
        author = 'S. Lem'
        title = 'Nie znam nic Lema'
        premiere = Date.parse('2015-09-16')
        age_restriction = 21
        expect { library.add_book(author, title, premiere, age_restriction) }.not_to raise_error
      }
    end

    describe '#edit_book' do
      it {
        id = 0
        title = 'Nowy tytul'
        expect {library.edit_book(id,'',title,'','')}.not_to raise raise_error
      }
      it {
          id = 0
          author = 'Nowy autor'
          age_restriction = 13
          expect { library.edit_book(id, author, '','',age_restriction) }.not_to raise_error
        }
        it {
          id = 1
          author = 'Heniu'
          title = 'Tytul'
          premiere = Date.parse('2015-09-21')
          age_restriction = 6
          expect { library.edit_book(id, author, title, premiere, age_restriction) }.not_to raise_error
        }
    end

      describe '#show_book' do
        it { expect { library.show_book(0) }.not_to raise_error }
        it { expect { library.show_book(1) }.not_to raise_error }
      end

      describe '#remove_book' do
        it { expect { library.remove_book(0) }.not_to raise_error }
        it { expect { library.remove_book(1) }.not_to raise_error }
      end

end
