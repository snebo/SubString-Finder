def str_count(word, dict, result)
  n_word = []
  word.each_char do |char|
    word.length >= 3 ? (dict.include?(char) ? result[char] += 1 : nil) : nil
    n_word.push(char)
    dict.include?(n_word.join('')) ? result[n_word.join('')] += 1 : nil
  end
  while not n_word.empty?
    n_word.shift
    dict.include?(n_word.join('')) ? result[n_word.join('')] += 1 : nil
  end
end

def substrings(words, dict)
  result = Hash.new{ 0 }
  words.gsub(/[^a-z0-9\s]/i,'').split(' ').each { |i| str_count(i.downcase, dict, result) }
  return result
end
