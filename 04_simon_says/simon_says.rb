def echo(saying)
    saying
end

def shout(saying)
   saying.upcase 
end

def repeat(saying, time=2)
    
  repeated= saying
  n_times= time-1
  n_times.times { repeated += " #{saying}" }
  repeated
    
end

def start_of_word(str, time)
    
    chr = str[0..time-1]
    
end

def first_word(str)
    str.split(" ")[0]
end

def titleize(str)
  list = str.split(" ")
  list[0].capitalize!
  list[1..-1].each do |mot| 
    mot.capitalize! unless little_word?(mot)
  end
   if list.length > 1
    final_list = list.inject(""){ |line, mot| line + " #{mot}"}.strip
  else
    str.capitalize
  end
end

private

def little_word?(string)
  ["and", "or", "of", "in", "a", "the"].include?(string)
end
