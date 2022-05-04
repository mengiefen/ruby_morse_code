@code_pair = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}

def decode_char(code)
  @code_pair[code]
end

def decode_word(word)
  @current_word = word.split
  @decoded_word = ''
  @current_word.each do |letter|
    @decoded_word += decode_char(letter)
  end
  @decoded_word
end

def decode_sentence(sentence)
  @words = sentence.split('   ')
  @decoded = ''
  @words.each do |word|
    @decoded += "#{decode_word(word)} "
  end
  @decoded
end

puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
