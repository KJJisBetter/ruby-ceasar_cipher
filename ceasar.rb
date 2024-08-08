def ceasar_cipher(string, encryption = 0)
  text = string.chars
  
  encrypted = text.map do |character|
    # 65-90 Uppercase
    # 97-122 Lowercase
    if character.match?(/[a-zA-Z]/)
      if character.ord > 65 && character.ord < 90
          new_character = character.ord + encryption
          if new_character > 90
            new_character -= 26
            new_character.chr
          else
            new_character.chr
          end
      elsif character.ord > 97 && character.ord < 122
        new_character = character.ord + encryption
        if new_character > 122
          new_character -= 26
          new_character.chr
        else
          new_character.chr
        end
      end
    else
      character 
    end

  end
  encrypted.join
end

puts ceasar_cipher("KEVIN IS the BesT NigGaa", 2)