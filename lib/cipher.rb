class Cipher 


  def cipher(string, factor)
    cipher_result = ''

    string.chars.map do |letter|
      value = letter.ord + (factor % 26) # Ensures the used factor value
# loops between 1-26 thus remaining within the ASCII letter case range.
      if letter =~ /[a-z]/ && value > 122
        value = (value % 122) + 96 # 96-122 is the lower case range we want to loop through.

      elsif letter =~ /[A-Z]/ && value > 90
        value = (value % 90) + 64 # 64-90 is the upper case range we want to loop through.
      
      elsif letter =~ /[^A-Za-z]/ # If not a char A-X or a-z simply keep the original 
        value = letter            # char as the letter
      end 
      cipher_result += value.chr # Add the computed values to cipher_reult variable.
    end
    cipher_result                 # Return cipher_result
  end


  def decipher(string, factor)
    cipher(string, (factor * -1)) # * -1 will convert the polarity of any number.
  end

end