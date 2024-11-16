# frozen_string_literal: true

def caeser_cipher(string, shift)
  string.chars
        .map do |char|
    shift_char(char, shift)
  end
  .join
end

def shift_char(char, shift)
  return char unless char.match?(/[a-zA-Z]/)

  shift = (shift.abs % 26)

  shifted = char.ord + shift

  # wrap shifted number back to a if its past z
  shifted -= 26 if (char.downcase == char && shifted > 122) || (char.upcase == char && shifted > 90)
  # convert the ascii to character
  shifted.chr
end

# p caeser_cipher('What a string!', 31)
