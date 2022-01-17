  #21. Write a function that takes an integer (less than 1000) and return an array of primes till that number.
  
  def prime(num)
    array = []
    if num == 1 || num == 0
        return "Not a prime number"
    end
    for i in 2 .. num
      m = i / 2
      count = 0
      for j in 2 .. m
        if i % j == 0 
          count += 1
        end
      end
      if count == 0
        array.push(i)
      end 
    end          
    return array
  end  
  
  primeArray = prime(100)
  print "#{primeArray}\n"
  
 # output:-- [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]