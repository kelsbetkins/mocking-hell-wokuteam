require_relative '../lib/account.rb'

RSpec.describe  'Account' do
    describe '#new' do
      let(:id) { 1 }
      let(:username) { double('Username', username: 'czeslaw1') }
      let(:password) { double('Password', password: 'okon') }
      let(:person) { double('Person', id: 1, firstname: 'Czeslaw', lastname: 'Test', country: 'Polska', age: '21') }
      subject(:account) { Account.new id, username, password, person }

      it 'creates a new account' do
        expect {account}.not_to raise_error
      end

      it 'returns Account type' do
        allow(account).to receive(:kind_of?).and_return(Account)
        expect(account).to be_a_kind_of(Account)
      end

      it 'returns correct id' do
        expect(account.id).to eq(id)
      end

      it 'returns correct username' do
        expect(account.username).to eq(username)
        expect(account.username.to_s).to be_a(String).and include(username.to_s)
      end

      it 'returns correct password' do
        expect(account.password).to eq(password)
        expect(account.password.to_s).to be_a(String).and include(password.to_s)
      end

      it 'returns correct person' do
        expect(account.person).to eq(person)
        allow(person).to receive(:kind_of?).and_return(Person)
        expect(account.person).to be_a_kind_of(Person)
        expect(account.person.to_s).to be_a(String).and include(person.to_s)
      end
    end
    describe '#to_s' do
      let(:id) { 1 }
      let(:username) { double('username', username: 'czeslaw1') }
      let(:password) { double('password', password: 'okon') }
      let(:person) { double('Person', id: 1, name: 'Czeslaw', lastname: 'Test', country: 'Polska') }
      subject(:account) { Account.new id, username, password, person }

      it 'returns correct output' do
        expect(account.to_s).to be_a(String).and include(username.to_s, password.to_s, person.to_s)
    end

    end
end
