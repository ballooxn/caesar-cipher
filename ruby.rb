require "to_ascii"

def cipher(string,key)
    array = []
    if key > 26 then key %= 26 end
    string.each_byte do |c|
        if (c >= 65) && (c <= 90)
            c += key
            if c > 90 then c -= 26 end
            array.push(c)
        elsif (c >= 97) && (c <= 122)
            c += key
            if c > 122 then c -= 26 end
            array.push(c)
        else
            array.push(c)
        end
    end
    p key
    return array.pack('c*')
end

p cipher("What a string!", 31)