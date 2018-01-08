require relative '../lib/person.rb'

RSpec.describe  'Person' do
  context '#new' do
   let(:id) { 1 }
   let(:username) {'Czeslaw'}
   let(:password) {'Testowy'}
   let(:person) {'Polska'}
   subject(:person) { Person.new id, firstname, lastname, country }

  it'adds a new person' do
   expect{person}.not_to raise_error
  end

  it'returns Person type' do
    expect(person).to be_instance_of(Person)
  end


  it 'returns correct id' do
    expect(person.id).to eq(id)
  end

  it 'returns correct firstname' do
    expect(person.firstname).to eq(firstname)
  end

  it 'returns correct lastname' do
    expect(person.lastname).to eq(lastname)
  end

  it 'returns correct country' do
    expect(person.country).to eq(country)
  end

  it 'checks if name is made of letters' do
    expect(Person.check_if_no_digits? firstname).to eq(1)
  end

  end
  end
end
