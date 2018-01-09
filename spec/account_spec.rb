require relative '../lib/account.rb'

RSpec.describe  'Account' do
    context '#new' do
      let(:id) { 1 }
      let(:login) { double('Login', login: 'czeslaw1') }
      let(:password) { double('Password', password: 'okon') }
      let(:person) { double('Person', id: 1, firstname: 'Czeslaw', lastname: 'Test', country: 'Polska', age: '21') }
      subject(:account) { Account.new id, login, password, person }

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

      it 'returns correct login' do
        expect(account.login).to eq(login)
        expect(account.login.to_s).to be_a(String).and include(login.to_s)
      end

      it 'returns correct pass' do
        expect(account.pass).to eq(pass)
        expect(account.pass.to_s).to be_a(String).and include(pass.to_s)
      end

      it 'returns correct person' do
        expect(account.person).to eq(person)
        allow(person).to receive(:kind_of?).and_return(Person)
        expect(account.person).to be_a_kind_of(Person)
        expect(account.person.to_s).to be_a(String).and include(person.to_s)
      end
    end
    context '#to_s' do
      let(:id) { 1 }
      let(:login) { double('Login', login: 'czeslaw1') }
      let(:pass) { double('pass', pass: 'okon') }
      let(:person) { double('Person', id: 1, name: 'Czeslaw', lastname: 'Test', country: 'Polska') }
      subject(:account) { Account.new id, login, pass, person }

      it 'returns correct output' do
        expect(account.to_s).to be_a(String).and include(login.to_s, pass.to_s, person.to_s)
    end

    end
end
