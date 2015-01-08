require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do
  it('Returns a score for the input String') do
    expect(("A".scrabble())).to(eq(1))
  end

  it('Gives correct score for any one letter word') do
    expect(("M").scrabble()).to(eq(3))
    expect(("Z").scrabble()).to(eq(10))
  end

  it('Gives the correct score for a multi-letter word') do
    expect(("CAT").scrabble()).to(eq(5))
  end

  it('Gives the correct score for a multi-letter, lowercase word') do
    expect(("cat").scrabble()).to(eq(5))
  end

  it('Gives the correct score for a multi-letter, lowercase word') do
    expect(("kitten").scrabble()).to(eq(10))
  end



end

=begin

Scrabble...

Returns a correct score for any one letter word

=end
