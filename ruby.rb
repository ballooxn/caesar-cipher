# frozen_string_literal: true

def cipher(string, key)
  array = []
  key %= 26 if key > 26
  string.each_byte do |c|
    if (c >= 65) && (c <= 90)
      c += key
      c -= 26 if c > 90
    elsif (c >= 97) && (c <= 122)
      c += key
      c -= 26 if c > 122
    end
    array.push(c)
  end
  p key
  array.pack('c*')
end

p cipher('What a string!', 31)
