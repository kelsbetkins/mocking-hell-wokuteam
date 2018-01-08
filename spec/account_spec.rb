require relative '../lib/account.rb'

RSpec.describe  'Person' do
  context '#new' do
   let(:id) { 1 }
   let(:username) {  }
   let(:password) { 'Brzdakal' }
   let(:person) { 'Poland' }
   subject(:person) { Person.new id, firstname, lastname, country }

  end
end
