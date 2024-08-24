def caesar_cipher(string, shift)
  encoded = ""
  string.chars.each do |char|
    if char >= 'a' && char <= 'z'
      new_ord = (char.ord + shift - 'a'.ord) % 26 + 'a'.ord
      shifted = new_ord.chr
      encoded << shifted
    elsif char >= 'A' && char <= 'Z'
      new_ord = (char.ord + shift - 'A'.ord) % 26 + 'A'.ord
      shifted = new_ord.chr
      encoded << shifted
    else
      encoded << char
    end
  end
  
  return encoded
end