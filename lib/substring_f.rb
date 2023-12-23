def count_apparence(word, dict, result)
  n_word = []
  word.each_char do |char|
    word.length >= 3 ? (dict.include?(char) ? result[char] += 1 : nil) : nil
    n_word.push(char)
    dict.include?(n_word.join('')) ? result[n_word.join('')] += 1 : nil
  end
  while n_word.length > 0
    n_word.shift
    dict.include?(n_word.join('')) ? result[n_word.join('')] += 1 : nil
  end
end

def substrings(words, dict)
  result = Hash.new{0}
  words.gsub(/[^a-z0-9\s]/i,'').split(' ').each {|i| count_apparence(i.downcase,dict,result)}
  return result
end