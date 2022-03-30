def filter_long_words(sentence, n)
  #your code here
  sentence.split(" ").map { |word| word if word.length > n }.compact
end