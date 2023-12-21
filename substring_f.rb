def substring(word, dict)
  n_word = []
  word.each_char do |char|
    n_word.push(char)
    dict.include?(n_word.join('')) ? $result[n_word.join('')] += 1 : nil
  end
  while n_word.length > 0
    n_word.shift
    dict.include?(n_word.join('')) ? $result[n_word.join('')] += 1 : nil
  end
end