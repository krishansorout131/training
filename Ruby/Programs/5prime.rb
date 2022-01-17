# 5. Create a function that takes an array and returns a new array containing only prime numbers.

  def prime(arr)
    array = []
    for i in 0 ... arr.length
      if arr[i] == 1
        next
      end    
      m = arr[i] / 2
      count = 0
      for j in 2 .. m
        if arr[i] % j == 0 
          count += 1
        end
      end
      if count == 0
        array.push(arr[i])
      end 
    end          
    return array
  end  
  
  arr = [1,2,3,4,5,6,7,8,9,11,13,15,17,19,14,18,21,1,23]
  primeArray = prime(arr)
  print primeArray
  
  # output:--
  #[2, 3, 5, 7, 11, 13, 17, 19, 23]