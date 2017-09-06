module FunWithStrings
  def palindrome?
    stripped = self.downcase.gsub(/[^a-z]/, "")
    return stripped == stripped.reverse
  end
  def count_words
    words = self.downcase.gsub(/[^a-z\s]/, "").split(' ')
    uniq_words = words.uniq
    return uniq_words.collect { |word| [word, words.count(word)]}.to_h
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
