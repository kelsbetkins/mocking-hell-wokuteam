require_relative '../lib/person.rb'

RSpec.describe  'Person' do
  context '#new' do
   let(:id) { 1 }
   let(:fistname) {'Czeslaw'}
   let(:lastname) {'Testowy'}
   let(:country) {'Polska'}
   let(:age) {'21'}
   subject(:person) { Person.new id, firstname, lastname, country, age }

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

  it 'returns correct age' do
    expect(person.age).to eq(age)
  end
end
  context '#to_s' do
    subject(:person) { Person.new 1, 'Czeslaw', 'Testowy', 'Polska', '21' }

    it 'returns correct output' do
      expect(person.to_s).to be_a(String).and include('Czeslaw Testowy Polska')
  end

  end
end
