require_relative '../lib/rent.rb'


RSpec.describe 'Rent' do
  describe '#new' do
    let(:id) { 1 }
    let(:account) { double('Account', id: 1, username: 'czeslaw1', password: 'okon', person: double('Person', id: 1, firstname: 'Czeslaw', lastname: 'Test', country: 'Polska', age: '21')) }
    let(:book) { double('Book', id: 1, author: 'Peter V. Brett', title: 'Malowany Czlowiek', premiere: Date.parse('2015-01-03'), age_restriction: '18') }
    let(:date_away) { double('Date_away', date_away: Date.parse('2016-01-01')) }
    let(:date_back) { double('Date_back', date_back: Date.parse('2016-02-01')) }
    let(:fine) { double('Fine', fine: 0) }
    subject(:rent) { Rent.new id, account, book, date_away, date_back, fine }

    it 'creates a new rent' do
      expect { rent }.not_to raise_error
    end

    it 'returns rent type' do
      allow(rent).to receive(:kind_of?).and_return(rent)
      expect(rent).to be_a_kind_of(rent)
    end

    it 'returns correct id' do
      expect(rent.id).to eq(id)
    end

    it 'returns correct account' do
      expect(rent.account).to eq(account)
      allow(account).to receive(:kind_of?).and_return(Account)
      expect(rent.account).to be_a_kind_of(Account)
      expect(rent.account.to_s).to be_a(String).and include(account.to_s)
    end

    it 'returns correct rented book' do
      expect(rent.book).to eq(book)
      expect(rent.book.to_s).to be_a(String).and include(book.to_s)
    end

    it 'returns correct date of rent' do
      expect(rent.date_away).to eq(date_away)
      expect(rent.date_away.to_s).to be_a(String).and include(date_away.to_s)
    end

    it 'returns correct date of return' do
      expect(rent.date_back).to eq(date_back)
      expect(rent.date_back.to_s).to be_a(String).and include(date_back.to_s)
    end
  end
  describe '#to_s' do
    let(:id) { 1 }
    let(:account) { double('Account', id: 1, username: 'czeslaw1', password: 'okon', person: double('Person', id: 1, firstname: 'Czeslaw', lastname: 'Test', country: 'Polska', age: '21')) }
    let(:book) { double('Book', id: 1, author: 'Peter V. Brett', title: 'Malowany Czlowiek', premiere: Date.parse('2015-01-03'), age_restriction: '18') }
    let(:date_away) { double('Date_away', date_away: Date.parse('2016-01-01')) }
    let(:date_back) { double('Date_back', date_back: Date.parse('2016-02-01')) }
    let(:fine) { double('Fine', fine: 0) }
    subject(:rent) { Rent.new id, account, book, date_away, date_back, fine }

    it 'returns correct output' do
      expect(rent.to_s).to be_a(String).and include(account.username, book.title, book.author, date_away.to_s, date_back.to_s, fine.to_s)
    end
  end
end
