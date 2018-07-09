def who_is_bigger(a, b, c)
    x=0
    
    if a != nil && b != nil && c != nil
        
        x= [a,b,c].max
        
        if x == a
            "a is bigger"
        elsif  x == b
        
            "b is bigger"
        else
            
            "c is bigger"
        end
        
    else
        
        "nil detected"
    end
    
end

def reverse_upcase_noLTA(str)
    
    str.upcase.reverse.gsub(/T|A|L/, '')
end

def array_42(arr)
    
    arr.include?(42)
    
end

def magic_array(a)
    a.flatten().uniq.sort.map{|e|e*2}.delete_if{|x|x%3==0}
    
end
