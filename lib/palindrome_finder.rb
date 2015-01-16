class PalindromeFinder

  attr_reader :result

  def initialize
    @result = []
  end

  def count_palindromes_in(textfile)
    text_array = extract_array(textfile)
    text_array.each { |line| collect_palindromes(line) }
    @result.count
  end

  def collect_palindromes(text)
    pal = text.gsub(/[^A-Za-z0-9]/, '').downcase
    @result << pal if pal.reverse == pal && pal != ''
  end

  def extract_array(file)
    array = File.open(file).read.split(/\r?\n/)
  end

end