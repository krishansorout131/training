#16. Given an integer limit being the upper limit of the range of interest, implement a function that returns the
#last 15 palindromes numbers lower or equal to limit as an array sorted ascendingly.

  def limit_palindrom(num)
    array = []
    for i in 1..num
      n1 = 0
      n2 = i
      while (n2 > 0)
        n1 = (n1 * 10) + (n2 % 10)
        n2 = n2 / 10
      end
      if (n1 == i)
        array.push(n1)
      end
    end
    len = array.length
    return array[len-15,len]
  end
    
    p limit_palindrom(89)
  
    # output:-    [3, 4, 5, 6, 7, 8, 9, 11, 22, 33, 44, 55, 66, 77, 88]