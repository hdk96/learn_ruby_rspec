VOYELLE = ["a", "e", "i", "o", "u"]
CONSONNE_REX = /(\A[^aeio]{1,3})(\w*)/ 

def translate(word) 
  words = word.split(" ")
  translated_words =  apply_translations(words)
  array_to_string(translated_words)
  
end

private

def apply_translations(array)
    translated_words = array.map do |wrd|
    start_with_vowel?(wrd) ? vowel_translate(wrd) : consonant_translate(wrd)
  end
end

def array_to_string(array)
  output = array.inject(""){ |result, item| result << item + " "}.strip
end

def start_with_vowel?(word)
  VOYELLE.include?(word[0])
end

def vowel_translate(word)
  word + "ay"
end

def consonant_translate(word)
  prefix = word.match(CONSONNE_REX)
  word = prefix[2] + prefix[1] + "ay"
end