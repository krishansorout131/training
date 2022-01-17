#14. Write a function which takes an integer (positive) and return an array of factorials of each index in index
# position till given number.

  def factorials(n)
    arr =[]
    val = 1
    if n >= 0
      num = n
      for i in 1 .. num
        val = val * i 
        arr.push(val)
      end
      return arr
    else 
      puts "Number must be a positive Integer"
    end
  end
  
  a = factorials(5)
  print "#{a}\n"
  
  # output:-- [1, 2, 6, 24, 120]
  