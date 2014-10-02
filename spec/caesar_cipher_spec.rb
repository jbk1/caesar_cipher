require 'cipher'

describe Cipher do
  
  it 'can cipher a string, wrapping from z to a' do
    expect(Cipher.new.cipher('a string xyz', 5)). to eq('f xywnsl cde')
  end

  it 'can recognise non alphabetical chars and leaves them as was given' do
    expect(Cipher.new.cipher('!@£$% &*', 15)).to eq('!@£$% &*')
  end

  it 'can decipher a ciphered string if given the original factor' do
    expect(Cipher.new.decipher('f xywnsl cde', 5)).to eq('a string xyz')
  end

end
 
