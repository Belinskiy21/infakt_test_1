require 'pry'
class CeasarCipher

  def initialize(string, shift = 13)
    @string = string
    @shift = shift
  end

  def perform
    alphabet  = Array('a'..'z')
    non_caps  = Hash[alphabet.zip(alphabet.rotate(@shift))]

    alphabet = Array('A'..'Z')
    caps     = Hash[alphabet.zip(alphabet.rotate(@shift))]

    encrypter = non_caps.merge(caps)

    @string.chars.map { |c| encrypter.fetch(c, c) }.join
  end
end
