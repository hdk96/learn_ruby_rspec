def add(a,b)
    
    a+b
end

def subtract(a,b)
    
    a-b
    
end

def sum(arr)
    
  num=0
  
  arr.each do |number|
            
    num += number
  end
  num
end

def multiply(a,b)
    
    a*b
    
end

def power(a,b)
    
    a**b
    
end

def factorial(n)
    
    result=0
    if n == 0 || n == 1
        
        return 1
    else
        
        result=  n*factorial(n - 1)
    end
    
end
 