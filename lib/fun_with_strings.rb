module FunWithStrings
  def palindrome?
    stripped = self.downcase.gsub(/[^a-z]/, "")
    return stripped == stripped.reverse
  end
  def count_words
    words = self.downcase.gsub(/[^a-z\s]/, "").split(' ')
    return words.uniq.collect { |word| [word, words.count(word)]}.to_h
  end
  def anagram_groups
    words = self.split(' ')
    return words.group_by { |word| word.downcase.chars.sort.join }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
