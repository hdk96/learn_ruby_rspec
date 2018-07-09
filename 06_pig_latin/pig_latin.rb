VOYELLE = ["a", "e", "i", "o", "u"]
CONSONNE_REX = /(\A[^aeio]{1,3})(\w*)/ 

def translate(mot) 
  mots = mot.split(" ")
  mots_traduit =  traduction(mots)
  array_en_string(mots_traduit)
  
end

private

def traduction(array)
    mots_traduit = array.map do |wrd|
    commence_par_voyelle?(wrd) ? traducteur_voyelle(wrd) : traducteur_consonne(wrd)
  end
end

def array_en_string(array)
  output = array.inject(""){ |result, item| result << item + " "}.strip
end

def commence_par_voyelle?(mot)
  VOYELLE.include?(mot[0])
end

def traducteur_voyelle(mot)
  mot + "ay"
end

def traducteur_consonne(mot)
  prefix = mot.match(CONSONNE_REX)
  mot = prefix[2] + prefix[1] + "ay"
end