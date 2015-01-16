require 'palindrome_finder'

describe PalindromeFinder do

  let(:palfinder) { PalindromeFinder.new }

  it 'should parse the contents of a text file into an array of 315 items' do
    expect(palfinder.extract_array('./lib/textfile2.md').length).to eq 315
  end

  it 'should put a palindrome into an array' do
    words = ["lol", "rspec", "ruby", "mom"]
    words.each do |word|
      palfinder.collect_palindromes(word)
    end
    expect(palfinder.result).to eq ["lol", "mom"]
  end

  it 'should return the number of palindromes from the file' do
    expect(palfinder.count_palindromes_in('./lib/textfile2.md')).to eq 95
  end

end