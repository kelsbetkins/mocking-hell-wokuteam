require_relative '../lib/book.rb'

RSpec.describe 'Book' do
  describe '#new' do
   let(:id) { 1 }
   let(:author) {'Jacek Piekara'}
   let(:title) {'Ja, Inkwizytor'}
   let(:premiere) {Date.parse('2012-11-12')}
   let(:age_restriction) { '18' }
   subject(:book) { Book.new id, author, title, premiere, age_restriction }

  it'adds a new book' do
   expect{book}.not_to raise_error
  end

  it'returns Book type' do
    expect(book).to be_instance_of(Book)
  end

  it 'returns correct id' do
    expect(book.id).to eq(id)
  end

  it 'returns correct author' do
    expect(book.author).to eq(author)
  end

  it 'returns correct title' do
    expect(book.title).to eq(title)
  end

  it 'returns correct date of premiere' do
    expect(book.premiere.to_s).to eq(premiere.to_s)
  end

  it 'returns correct age restriction' do
    expect(book.age_restriction).to eq(age_restriction)
  end

  it 'checks if author is made of letters' do
    expect(Book.check_if_no_digits? author).to eq(1)
  end
end
  describe '#to_s' do
    subject(:book) { Book.new 1, 'Jacek_Piekara', 'Ja Inkwizytor', Date.parse('2012-11-12') , '18' }

  it 'returns correct output' do
    expect(book.to_s).to be_a(String).and include('Jacek_Piekara Ja_Inkwizytor 2012-11-12 18')
  end

  end
end
